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

import jakarta.validation.Valid;

@Controller
public class CommentiController {
	private final CommentoService commentoService;

	
	public CommentiController(CommentoService commentoService) {
		this.commentoService = commentoService;
	}

	@GetMapping("commento/form/{id}")
	public String iniziaCreazioneCommento(@PathVariable("id") Long id, Model model) {
		model.addAttribute("commento", new Commento());
		model.addAttribute("idPartita", id); 
		return "commento/creaCommento";
	}
	
	@PostMapping("commento/salva/{idPartita}")
	public String salva(@PathVariable("idPartita") Long idPartita, 
	                   @Valid @ModelAttribute Commento commento,
	                   BindingResult biR, 
	                   Principal principal) {
	    
	    if(biR.hasErrors()) {
	    	return "commento/creaCommento";
	    }
	    
	    try {
	        commentoService.salvaOAggiorna(idPartita, commento, principal.getName());
	    } catch (EccezioneCommento e) {
	        biR.reject("validazione", e.getMessage()); 
	        return "commento/creaCommento";
	    }

	    return "redirect:/partita/" + idPartita;
	}
	
	
	@GetMapping("commento/modifica/{id}")
	public String modificaCommento(@PathVariable("id") Long id, Model model,Principal principal) {
	    Commento commento = commentoService.findById(id);
	    if (!commento.getUtente().getEmail().equals(principal.getName())) {
	        return "redirect:/";
	    }
	    model.addAttribute("commento", commento);
	    model.addAttribute("idPartita", commento.getPartita().getId());
	    return "commento/creaCommento";
	}
	
}
