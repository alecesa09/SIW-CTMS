package it.uniroma3.siw.service;

import java.util.List;

import org.springframework.stereotype.Service;

import it.uniroma3.siw.Arbitro;
import it.uniroma3.siw.repository.ArbitroRepository;

@Service
public class ArbitroService {
	private final ArbitroRepository arbitroRepository;
	
	public ArbitroService(ArbitroRepository arbitroRepository) {
		super();
		this.arbitroRepository = arbitroRepository;
	}


	public Arbitro getArbitro(Long id) {
		return arbitroRepository.findById(id).get();
	}
	
	public List<Arbitro> findAll(){
		return arbitroRepository.findAll();
	}
}
