package it.uniroma3.siw.service;

import it.uniroma3.siw.repository.ArbitroRepository;
import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.BeanUtils;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.exception.GiocatoreNonTrovatoException;
import it.uniroma3.siw.exception.PartitaNonTrovataException;
import it.uniroma3.siw.exception.SquadraUgualeException;
import it.uniroma3.siw.exception.TorneoDiversoException;
import it.uniroma3.siw.repository.PartitaRepository;

@Service
public class PartitaService {

	private final ArbitroRepository arbitroRepository;
	private final PartitaRepository partitaRepository;

	public PartitaService(PartitaRepository partitaRepository, ArbitroRepository arbitroRepository) {
		this.partitaRepository = partitaRepository;
		this.arbitroRepository = arbitroRepository;
	}
	
	@Transactional(readOnly = true)
	public Partita findById(Long id) {
		Optional<Partita> partita = partitaRepository.findByIdconTutto(id);
		 if (partita.isPresent()) {
		 return partita.get();
		 } else {
		 throw new PartitaNonTrovataException(id);
		 }
	}

	@Transactional(readOnly = true)
	public List<PartitaDTO> findCalendarioByTorneo(Long id) {
		return partitaRepository.findCalendario(id);
	}

	@Transactional(readOnly = true)
	public List<Partita> findCalendarioBySquadra(Long id) {
		return partitaRepository.getCalendarioDiSquadraPerId(id);
	}

	@Transactional(readOnly = true)
	public List<Partita> findUltime5(Long idSquadra) {
	    return partitaRepository.findTop5BySquadraCasa_Squadra_IdAndStatoOrSquadraTrasferta_Squadra_IdAndStatoOrderByDataDesc(
	        idSquadra,               
	        Partita.Stato.TERMINATA, 
	        idSquadra,               
	        Partita.Stato.TERMINATA  
	    );
	}
	@Transactional(readOnly = true)
	public List<Partita> findByData(){
		LocalDate date = LocalDate.now();
		return partitaRepository.findByData(date);
	}
	
	@Transactional(readOnly = true)
	public List<PartitaDTO> findPartiteOggi(){
		LocalDate date = LocalDate.now();
		return partitaRepository.findPartiteOggi(date);
	}
	
	@Transactional(readOnly = true)
	public List<Partita> findAllWithSquadre(){
		return partitaRepository.findallWithSquadre();
	}
	
	@Transactional(isolation = Isolation.SERIALIZABLE)
	public void savePartita(Partita partita){
	    
	    // Controllo comunque null nonostante il validation nel controller
	    if (partita.getTorneo() == null || partita.getSquadraCasa() == null || partita.getSquadraTrasferta() == null) {
	        throw new IllegalArgumentException("Torneo e squadre non possono essere nulli");
	    }

	    Long idTorneoPartita = partita.getTorneo().getId();
	    Long idTorneoCasa = partita.getSquadraCasa().getTorneo().getId();
	    Long idTorneoTrasferta = partita.getSquadraTrasferta().getTorneo().getId();

	    if (!idTorneoCasa.equals(idTorneoPartita) || !idTorneoTrasferta.equals(idTorneoPartita)) {
	        throw new TorneoDiversoException(partita.getTorneo(), partita.getSquadraCasa(), partita.getSquadraTrasferta());
	    }
	    if (partita.getSquadraCasa().getId()==partita.getSquadraTrasferta().getId()) {
	        throw new SquadraUgualeException();
	    }
	    if(partita.getId() != null){
	        modificaPartita(partita);
	    } else {
	        creaPartita(partita);
	    }
	}
	
	private void creaPartita(Partita partita) {
		partitaRepository.save(partita);
	}
	


	private void modificaPartita(Partita partitaDalForm) {
	    Partita partitaDaAggiornare = partitaRepository.findById(partitaDalForm.getId())
	            .orElseThrow(() -> new PartitaNonTrovataException(partitaDalForm.getId()));
	    BeanUtils.copyProperties(partitaDalForm, partitaDaAggiornare, "id", "torneo", "commenti");
	    partitaRepository.save(partitaDaAggiornare);
	}
	@Transactional(readOnly = true)
	public List<Partita> ricercaAvanzata(String nomeTorneo, Integer anno, String nomeSquadra) {
		return partitaRepository.ricercaAvanzata(nomeTorneo, anno, nomeSquadra);
	}
}
