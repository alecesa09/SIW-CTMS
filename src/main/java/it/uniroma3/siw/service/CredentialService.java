package it.uniroma3.siw.service;

import org.springframework.stereotype.Service;

import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.repository.CredentialsRepository;

@Service
public class CredentialService {
	private final CredentialsRepository credentialRepository;
	
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
		return credentialRepository.save(credentials);
	}
	
}
