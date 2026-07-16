package it.uniroma3.siw.service;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Optional;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;
import org.springframework.web.multipart.MultipartFile;

import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.exception.IscrizioneConPartiteException;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.repository.SquadraIscrittaRepository;
import it.uniroma3.siw.repository.SquadraRepository;
import it.uniroma3.siw.repository.TorneoRepository;

import java.util.UUID;
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
	
	@Value("${app.upload.dir}")
	private String uploadDir;

	private String salvaImmagineSuDisco(MultipartFile file) throws IOException {
	    if (file == null || file.isEmpty()) {
	        return null;
	    }

	    // 1. Prendo il nome originale per estrarre l'estensione
	    String nomeOriginale = StringUtils.cleanPath(file.getOriginalFilename());
	    String estensione = "";
	    
	    int dotIndex = nomeOriginale.lastIndexOf('.');
	    if (dotIndex >= 0) {
	        estensione = nomeOriginale.substring(dotIndex); // Restituisce ".png", ".jpg", ecc.
	    }

	    // 2. Genero un nome completamente nuovo e univoco
	    String nomeFileUnivoco = UUID.randomUUID().toString() + estensione;

	    Path cartellaUpload = Paths.get(uploadDir);
	    
	    if (!Files.exists(cartellaUpload)) {
	        Files.createDirectories(cartellaUpload);
	    }
	    
	    // 3. Salvo il file usando il NUOVO nome
	    Path percorsoCompleto = cartellaUpload.resolve(nomeFileUnivoco);
	    Files.copy(file.getInputStream(), percorsoCompleto, StandardCopyOption.REPLACE_EXISTING);
	    
	    // Restituisco il nuovo nome (es. "123e4567-e89b-12d3-a456-426614174000.png")
	    return nomeFileUnivoco; 
	}
	
	@Transactional(isolation = Isolation.SERIALIZABLE, rollbackFor = Exception.class)
	public void saveSquadra(Squadra squadra, List<Long> torneiId, MultipartFile file) 
	        throws Exception, TorneoNotFoundException, SquadraNonTrovataException, IscrizioneConPartiteException {
	    logger.info("Transazione modifica/creazione squadra iniziata. Tornei ID: {}", torneiId);

	    // 1. Salvo il file e ottengo solo il nome
	    String nomeFileGenerato = salvaImmagineSuDisco(file);
	    
	    List<Long> torneiSicuri = (torneiId != null) ? torneiId : new ArrayList<>();

	    try {
	        // 2. Smistamento logica DB
	        if (squadra.getId() == null) {
	            eseguiCreazione(squadra, torneiSicuri, nomeFileGenerato);
	        } else {
	            eseguiModifica(squadra, torneiSicuri, nomeFileGenerato);
	        }
	    } catch (Exception  e) {
	        // 3. ROLLBACK MANUALE DEL FILE IN CASO DI ERRORE DB
	        if (nomeFileGenerato != null) {
	            Path percorsoFile = Paths.get(uploadDir).resolve(nomeFileGenerato);
	            try {
	                Files.deleteIfExists(percorsoFile);
	                logger.info("Rollback eseguito: eliminato file orfano {}", nomeFileGenerato);
	            } catch (IOException ioException) {
	                logger.error("Impossibile eliminare il file orfano: {}", nomeFileGenerato, ioException);
	            }
	        }
	        // Rilancio l'eccezione per far scattare il rollback del database di Spring
	        throw e;
	    }
	}
	
	private void eseguiCreazione(Squadra squadra, List<Long> torneiSicuri, String nomeFileNuovo) throws TorneoNotFoundException {
	    List<SquadraIscritta> iscrizioni = new ArrayList<>();
	    for (Long torneoId : torneiSicuri) {
	        Torneo torneo = tR.findById(torneoId).orElseThrow(() -> new TorneoNotFoundException(torneoId));
	        SquadraIscritta squadraIscritta = new SquadraIscritta(torneo, squadra);
	        iscrizioni.add(squadraIscritta);
	    }
	    squadra.setIscrizioni(iscrizioni);
	    
	    if (nomeFileNuovo != null) {
	        squadra.setLogo("/immagini/" + nomeFileNuovo); 
	    }
	    
	    squadraRepository.save(squadra);
	}

	private void eseguiModifica(Squadra squadraDalForm, List<Long> torneiSicuri, String nomeFileNuovo) 
	        throws TorneoNotFoundException, SquadraNonTrovataException, IscrizioneConPartiteException {
	    
	    Squadra squadraEsistente = squadraRepository.findById(squadraDalForm.getId())
	            .orElseThrow(() -> new SquadraNonTrovataException(squadraDalForm.getId()));
	    
	    // Aggiornamento dati anagrafici
	    squadraEsistente.setNome(squadraDalForm.getNome());
	    squadraEsistente.setCitta(squadraDalForm.getCitta());       
	    squadraEsistente.setFondazione(squadraDalForm.getFondazione()); 
	    
	    // Assegnazione corretta con prefisso
	    if (nomeFileNuovo != null) {
	        squadraEsistente.setLogo("/immagini/" + nomeFileNuovo); 
	    }
	    
	    // Rimozione tornei deselezionati con salvaguardia dell'integrità
	    Iterator<SquadraIscritta> iterator = squadraEsistente.getIscrizioni().iterator();
	    while (iterator.hasNext()) {
	        SquadraIscritta si = iterator.next();
	        
	        // Se il torneo attuale non è presente nella nuova lista di torneiSicuri
	        if (!torneiSicuri.contains(si.getTorneo().getId())) {
	            
	            // [verificato] Controllo sulle due liste tramite i metodi getter generati
	            boolean haGiocatoInCasa = si.getPartiteIncasa() != null && !si.getPartiteIncasa().isEmpty();
	            boolean haGiocatoFuoriCasa = si.getPartiteFuoriCasa() != null && !si.getPartiteFuoriCasa().isEmpty();
	            
	            if (haGiocatoInCasa || haGiocatoFuoriCasa) {
	                // Interrompe istantaneamente la transazione @Transactional
	                throw new IscrizioneConPartiteException(
	                    "Impossibile rimuovere la squadra dal torneo. Risultano già delle partite a calendario."
	                );
	            }
	            
	            iterator.remove(); 
	        }
	    }

	    // Identificazione tornei già presenti
	    List<Long> idTorneiAttuali = new ArrayList<>();
	    for (SquadraIscritta si : squadraEsistente.getIscrizioni()) {
	        idTorneiAttuali.add(si.getTorneo().getId()); 
	    }

	    // Aggiunta nuovi tornei selezionati
	    for (Long idDesiderato : torneiSicuri) {
	        if (!idTorneiAttuali.contains(idDesiderato)) {
	            Torneo torneo = tR.findById(idDesiderato).orElseThrow(() -> new TorneoNotFoundException(idDesiderato));
	            SquadraIscritta nuovaIscrizione = new SquadraIscritta(torneo, squadraEsistente);
	            squadraEsistente.getIscrizioni().add(nuovaIscrizione);
	        }
	    }

	    squadraRepository.save(squadraEsistente);
	}
}
