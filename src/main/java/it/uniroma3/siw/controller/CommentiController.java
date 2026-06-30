package it.uniroma3.siw.controller;

import java.security.Principal;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.exception.EccezioneCommento;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.CredentialService;
import jakarta.validation.Valid; // Assicurati di avere questa importazione

@Controller
public class CommentiController {
	private final CommentoService commentoService;
	private final CredentialService credentialService; // Mantenuto, ma attualmente inutilizzato in questa classe
	
	public CommentiController(CommentoService commentoService, CredentialService credentialService) {
		this.commentoService = commentoService;
		this.credentialService = credentialService;
	}

	@GetMapping("commento/form/{id}")
	public String iniziaCreazioneCommento( Model model) {
		model.addAttribute("commento", new Commento());
		return "commento/creaCommento";
	}
	
	@PostMapping("commento/crea/{id}")
	public String crea(@PathVariable("id") Long idPartita, 
	                   @Valid @ModelAttribute Commento commento,
	                   BindingResult biR, 
	                   Principal principal) {
	    

	    if(biR.hasErrors()) {
	    	return "commento/creaCommento";
	    }
	    
	    try {
	        commentoService.crea(idPartita, commento, principal.getName());
	    } catch (EccezioneCommento e) {
	        biR.reject("error-utente", e.getMessage()); 
	        return "commento/creaCommento";
	    }

	    return "redirect:/partita/" + idPartita;
	}
	
	
	@GetMapping("commenti/modifica/{id}")
	public String modificaCommento(@PathVariable("id") Long id, Model model) {
		model.addAttribute("squadra", id);
		return "commento/creaCommento";
	}
	

	@PostMapping("commento/modifica/{id}")
	public String save(@PathVariable("id") Long id) {
		return "redirect:/";
	}
}
