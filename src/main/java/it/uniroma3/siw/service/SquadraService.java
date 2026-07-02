package it.uniroma3.siw.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.repository.SquadraRepository;


@Service
public class SquadraService {
	private final SquadraRepository squadraRepository;
   
    public SquadraService(SquadraRepository squadraRepository) {
        this.squadraRepository = squadraRepository;
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
}
