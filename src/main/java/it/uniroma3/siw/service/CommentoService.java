package it.uniroma3.siw.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.repository.CommentiRepository;

@Service
public class CommentoService {
	private final CommentiRepository commentiRepository;

	public CommentoService(CommentiRepository commentiRepository) {
		this.commentiRepository = commentiRepository;
	}
	
	public List<Commento> findByPartitaId(long id){
		List<Commento> commenti =  commentiRepository.findByPartitaId(id);
		if (commenti == null) {
		    commenti = new ArrayList<>();
		}
		return commenti;
	}
}
