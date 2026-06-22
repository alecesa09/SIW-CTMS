package it.uniroma3.siw.service;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.repository.CredentialsRepository;

@Service
public class CredentialService {
	private final CredentialsRepository credentialRepository;
	
	private static final Logger logger = LoggerFactory.getLogger(CredentialService.class);
	
	public CredentialService(CredentialsRepository credentialRepository) {
		super();
		this.credentialRepository = credentialRepository;
	}

	public Credentials getCredentials(Long id) {
		return credentialRepository.findById(id).get();
		
	}
	
	public Credentials getCredentials(String username) {
		return credentialRepository.findByUsername(username).get();
	}
	
	public Credentials saveCredentials(Credentials credentials) {
		logger.info("salvataggio credenziali: username={}", credentials.getUsername());
		credentials.setRuolo(Credentials.DEFAULT_ROLE);
		return credentialRepository.save(credentials);
	}
	
}
