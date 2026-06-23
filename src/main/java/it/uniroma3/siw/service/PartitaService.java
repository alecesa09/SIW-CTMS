package it.uniroma3.siw.service;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.repository.PartitaRepository;

@Service
public class PartitaService {

	private final PartitaRepository partitaRepository;

	public PartitaService(PartitaRepository partitaRepository) {
		this.partitaRepository = partitaRepository;
	}
	
	@Transactional(readOnly = true)
	public Partita findById(Long id) {
		return partitaRepository.findById(id).get();
	}

	@Transactional(readOnly = true)
	public List<Partita> findCalendarioByTorneo(Long id) {
		return partitaRepository.findByTorneoIdOrderByDataAsc(id);
	}

	@Transactional(readOnly = true)
	public List<Partita> findCalendarioBySquadra(Long id) {
		return partitaRepository.getCalendarioDiSquadraPerId(id);
	}

	@Transactional(readOnly = true)
	public List<Partita> findUltime5(Long idSquadra) {
	    return partitaRepository.findTop5BySquadraCasaIdAndStatoOrSquadraTrasfertaIdAndStatoOrderByDataDesc(
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
	
	
}
