package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.TorneoDTO;
import it.uniroma3.siw.repository.TorneoRepository;


@Service
public class TorneoService {
	private final TorneoRepository torneoRepository;

    public TorneoService(TorneoRepository torneoRepository) {
        this.torneoRepository = torneoRepository;

    }
    
    @Transactional(readOnly = true)
	public Torneo findById(long id){
    	Torneo torneo = this.torneoRepository.findById(id).get();
		return torneo;
	}
    @Transactional(readOnly = true)
	public List<TorneoDTO> findInfoTornei() {
        return (List<TorneoDTO>) torneoRepository.FindInfoTornei();
    }
}
