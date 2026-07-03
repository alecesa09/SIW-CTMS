package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.stereotype.Service;
import it.uniroma3.siw.dto.ClassificaDTO;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.repository.SquadraIscrittaRepository;
import org.springframework.transaction.annotation.Transactional;
@Service
public class SquadraIscrittaService {
	private final SquadraIscrittaRepository squadraIscrittaRepository;
	
	
	public SquadraIscrittaService(SquadraIscrittaRepository squadraIscrittaRepository) {
		this.squadraIscrittaRepository = squadraIscrittaRepository;
	}
	
	@Transactional(readOnly=true)
	public List<ClassificaDTO> getClassifica(long id){
		return squadraIscrittaRepository.findSquadreRawByTorneoId(id);
	}
	
}
