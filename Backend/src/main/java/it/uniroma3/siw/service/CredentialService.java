package it.uniroma3.siw.service;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Utente;
import it.uniroma3.siw.exception.EmailUtenteDuplicataException;
import it.uniroma3.siw.exception.UsernameDuplicatoException;
import it.uniroma3.siw.repository.CredentialsRepository;
import it.uniroma3.siw.repository.UtenteRepository;

@Service
public class CredentialService {
	private final CredentialsRepository credentialRepository;
	private final UtenteRepository utenteRepository;
	
	 private PasswordEncoder passwordEncoder;
	 
	private static final Logger logger = LoggerFactory.getLogger(CredentialService.class);
	
	public CredentialService(CredentialsRepository credentialRepository,PasswordEncoder passwordEncoder,UtenteRepository utenteRepository) {
		this.passwordEncoder = passwordEncoder;
		this.credentialRepository = credentialRepository;
		this.utenteRepository = utenteRepository;
	}
	@Transactional(readOnly = true)
	public Credentials getCredentials(Long id) {
		return credentialRepository.findById(id).get();
		
	}
	@Transactional(readOnly = true)
	public Credentials getCredentials(String username) {
		return credentialRepository.findByUsername(username).get();
	}
	@Transactional(isolation = Isolation.SERIALIZABLE)//da controllare isolation
	public Credentials saveCredentials(Credentials credentials, Utente utente) throws UsernameDuplicatoException,EmailUtenteDuplicataException {
		if(credentialRepository.existsByUsername(credentials.getUsername())) {
			throw( new UsernameDuplicatoException());
		}
		if(utenteRepository.existsByEmail(utente.getEmail())) {
			throw( new EmailUtenteDuplicataException());
		}
		credentials.setUtente(utente);
		String passwordCifrata = passwordEncoder.encode(credentials.getPsw());
        credentials.setPsw(passwordCifrata);
		logger.info("salvataggio credenziali: username={}", credentials.getUsername());
		credentials.setRuolo(Credentials.DEFAULT_ROLE);
		return credentialRepository.save(credentials);
	}
	
	@Transactional(readOnly = true)
	public Credentials findByUsername(String usernameLoggato) {
		return credentialRepository.findByUsername(usernameLoggato).get();
	}
	
}
