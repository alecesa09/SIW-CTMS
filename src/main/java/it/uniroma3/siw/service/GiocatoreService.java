package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.repository.GiocatoreRepository;

@Service
public class GiocatoreService {
	private final GiocatoreRepository giocatoreRepository;
	   
    public GiocatoreService(GiocatoreRepository giocatoreRepository) {
        this.giocatoreRepository = giocatoreRepository;
    }
    @Transactional(readOnly = true)
	public Giocatore findGiocatoreById(long id){
		Giocatore giocatore = this.giocatoreRepository.findById(id).get();
		return giocatore;
	}
	
	@Transactional(readOnly = true)
	public List<Object[]> findGiocatoreBySquadra(long id){
		List<Object[]> giocatori = this.giocatoreRepository.findParametriBySquadraId(id);
		return giocatori;
	}
}
