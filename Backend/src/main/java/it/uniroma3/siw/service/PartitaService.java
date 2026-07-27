package it.uniroma3.siw.service;


import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.beans.BeanUtils;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.exception.PartitaNonTrovataException;
import it.uniroma3.siw.exception.SquadraUgualeException;
import it.uniroma3.siw.exception.TorneoDiversoException;
import it.uniroma3.siw.repository.PartitaRepository;

@Service
public class PartitaService {

	private final PartitaRepository partitaRepository;

	public PartitaService(PartitaRepository partitaRepository) {
		this.partitaRepository = partitaRepository;
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
	public List<Partita> findUltime5(Long idSquadra) {
	    return partitaRepository.findTop5BySquadraCasa_Squadra_IdAndStatoOrSquadraTrasferta_Squadra_IdAndStatoOrderByDataDesc(
	        idSquadra,               
	        Partita.Stato.TERMINATA, 
	        idSquadra,               
	        Partita.Stato.TERMINATA  
	    );
	}
	
	@Transactional(readOnly = true)
	public List<PartitaDTO> findPartiteOggi(){
		LocalDate date = LocalDate.now();
		return partitaRepository.findPartiteOggi(date);
	}
	
}
