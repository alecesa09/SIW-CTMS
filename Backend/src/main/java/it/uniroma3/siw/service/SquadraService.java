package it.uniroma3.siw.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.repository.SquadraIscrittaRepository;
import it.uniroma3.siw.repository.SquadraRepository;
import it.uniroma3.siw.repository.TorneoRepository;


@Service
public class SquadraService {
	private final SquadraRepository squadraRepository;
	private final TorneoRepository tR;
	private final SquadraIscrittaRepository sIR;
	private static final Logger logger =LoggerFactory.getLogger(SquadraService.class);
   
    public SquadraService(SquadraRepository squadraRepository,TorneoRepository tR,SquadraIscrittaRepository sIR) {
        this.squadraRepository = squadraRepository;
        this.tR=tR;
        this.sIR=sIR;
    }
	
	@Transactional(readOnly = true)
	public Squadra findById(long id){
		Optional<Squadra> squadra = this.squadraRepository.findById(id);
		 if (squadra.isPresent()) {
		 return squadra.get();
		 } else {
		 throw new SquadraNonTrovataException(id);
		 }	 
	}
	
	@Transactional(readOnly = true)
	public List<Squadra> findAll() {
        return (List<Squadra>) squadraRepository.findAll();
    }
	
	@Transactional(isolation = Isolation.SERIALIZABLE, rollbackFor = Exception.class)
	public void saveSquadra(Squadra squadra, List<Long> torneiId) throws TorneoNotFoundException {
	    logger.info("transazione modifica e creazione squadra iniziata con questi tornei: id={}", torneiId);
	    
	    // SICUREZZA: Se torneiId è null (nessuna spunta), creiamo una lista vuota per evitare NullPointerException
	    List<Long> torneiSicuri = (torneiId != null) ? torneiId : new ArrayList<>();

	    if (squadra.getId() == null) {
	        // ================= CREAZIONE =================
	        List<SquadraIscritta> iscrizioni = new ArrayList<>();
	        for (Long torneoId : torneiSicuri) {
	            Torneo torneo = tR.findById(torneoId).orElseThrow(() -> new TorneoNotFoundException(torneoId));
	            SquadraIscritta squadraIscritta = new SquadraIscritta(torneo, squadra);
	            iscrizioni.add(squadraIscritta);
	        }
	        squadra.setIscrizioni(iscrizioni);
	        squadraRepository.save(squadra);
	    } else {
	        // ================= MODIFICA =================
	        
	        // FIX DEFINITIVO: L'oggetto 'squadra' dal form è "staccato" e non conosce le sue vere iscrizioni.
	        // Dobbiamo caricare l'entità REALE dal database per avere la sua collezione tracciata:
	        Squadra squadraEsistente = squadraRepository.findById(squadra.getId())
	                .orElseThrow(() -> new RuntimeException("Squadra non trovata nel DB"));
	        
	        // AGGIORNAMENTO DATI: Copiamo i campi testuali modificati dal form all'entità reale
	        squadraEsistente.setNome(squadra.getNome());
	        // IMPORTANTE: Decommenta e adatta le righe seguenti in base ai campi che hai nella tua classe!
	        // squadraEsistente.setAnno(squadra.getAnno());         
	        // squadraEsistente.setCitta(squadra.getCitta());       
	        // squadraEsistente.setFondazione(squadra.getFondazione()); 
	        
	        // 1. ELIMINAZIONI (Lavoriamo sulla PersistentBag REALE di squadraEsistente)
	        Iterator<SquadraIscritta> iterator = squadraEsistente.getIscrizioni().iterator();
	        while (iterator.hasNext()) {
	            SquadraIscritta si = iterator.next();
	            // Se l'ID del torneo dell'iscrizione attuale NON è presente nella lista del form...
	            if (!torneiSicuri.contains(si.getTorneo().getId())) {
	                iterator.remove(); // Rimuove dalla PersistentBag (Hibernate farà la DELETE)
	            }
	        }

	        // 2. PRENDI TUTTI I TORNEI ATTUALI (RIMASTI NEL DATABASE)
	        List<Long> idTorneiAttuali = new ArrayList<>();
	        for (SquadraIscritta si : squadraEsistente.getIscrizioni()) {
	            idTorneiAttuali.add(si.getTorneo().getId()); 
	        }

	        // 3. AGGIUNGI LE ISCRIZIONI MANCANTI
	        for (Long idDesiderato : torneiSicuri) {
	            if (!idTorneiAttuali.contains(idDesiderato)) {
	                Torneo torneo = tR.findById(idDesiderato).orElseThrow(() -> new TorneoNotFoundException(idDesiderato));
	                // Creiamo la nuova iscrizione legandola alla squadraEsistente, non a quella staccata
	                SquadraIscritta nuovaIscrizione = new SquadraIscritta(torneo, squadraEsistente);
	                squadraEsistente.getIscrizioni().add(nuovaIscrizione);
	            }
	        }

	        // Salviamo l'entità GESTITA da Hibernate, che ora contiene i dati aggiornati
	        squadraRepository.save(squadraEsistente);
	    }
	}
}
