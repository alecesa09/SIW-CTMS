package it.uniroma3.siw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.security.crypto.password.PasswordEncoder;

import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Utente;
import it.uniroma3.siw.service.CredentialService;
import it.uniroma3.siw.service.UtenteService;

@Controller
public class UtenteController {
	private final UtenteService utenteService;
	private final CredentialService credentialService;
    private PasswordEncoder passwordEncoder;
	
	public UtenteController(UtenteService utenteService,CredentialService credentialService,PasswordEncoder passwordEncoder) {
		this.utenteService = utenteService;
		this.credentialService =credentialService;
		this.passwordEncoder = passwordEncoder;
	}
	
	@GetMapping("/registrazione")
	public String iniziaRegistrazione(Model model) {
		model.addAttribute("utente", new Utente());
        model.addAttribute("credentials", new Credentials());
		return "/utente/registrazione";
	}
	
	@PostMapping("/registrazione")
	public String completaRegistrazione(@ModelAttribute Utente utente, @ModelAttribute Credentials credentials) {
		credentials.setUtente(utente);
		String passwordCifrata = passwordEncoder.encode(credentials.getPsw());
        credentials.setPsw(passwordCifrata);
        credentialService.saveCredentials(credentials);	
		return "redirect:/login";
	}
	
}
