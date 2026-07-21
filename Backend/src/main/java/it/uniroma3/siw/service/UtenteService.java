package it.uniroma3.siw.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Utente;
import it.uniroma3.siw.repository.UtenteRepository;

@Service
public class UtenteService {
	private final UtenteRepository utenteRepository;
	
	public UtenteService(UtenteRepository utenteRepository) {
		super();
		this.utenteRepository = utenteRepository;
	}
	
	@Transactional(readOnly = true)
	public Utente getUser(Long id) {
		return utenteRepository.findById(id).get();
	}
	@Transactional(isolation = Isolation.SERIALIZABLE)//da controllare isolation
	public Utente saveUser(Utente user) {
		return utenteRepository.save(user);
	}
}
