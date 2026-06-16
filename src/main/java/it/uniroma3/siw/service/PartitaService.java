package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.repository.PartitaRepository;


@Service
public class PartitaService {
	
	private final PartitaRepository partitaRepository;
	   
    public PartitaService(PartitaRepository partitaRepository) {
        this.partitaRepository = partitaRepository;
    }
	
	@Transactional(readOnly = true)
	public List<Partita> findCalendarioByTorneo(Long id){
		return partitaRepository.findByTorneoId(id);
	}
	
	@Transactional(readOnly = true)
	public List<Partita> findCalendarioBySquadra(Long id){
		return partitaRepository.getCalendarioDiSquadraPerId(id);
	}
	
}
