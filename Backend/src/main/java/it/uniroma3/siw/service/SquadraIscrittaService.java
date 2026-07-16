package it.uniroma3.siw.service;

import java.util.List;

import org.jspecify.annotations.Nullable;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.ClassificaDTO;
import org.springframework.transaction.annotation.Transactional;
import it.uniroma3.siw.exception.NumeroSquadreInsufficentiException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
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
	
	@Transactional(readOnly=true)
	public List<SquadraIscritta> findByTorneoWithSquadra(Torneo torneo) {
	    if (torneo == null) {
	        throw new TorneoNotFoundException();
	    }
	    List<SquadraIscritta> squadre = squadraIscrittaRepository.findByTorneo(torneo);

	    if (squadre == null || squadre.isEmpty()) {
	        throw new TorneoNotFoundException();
	    }
	    if (squadre.size() < 2) {
	        throw new NumeroSquadreInsufficentiException(torneo);
	    }

	    return squadre;
	}
	
}
