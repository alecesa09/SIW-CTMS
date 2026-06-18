package it.uniroma3.siw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.Utente;
import it.uniroma3.siw.service.UtenteService;
import jakarta.validation.Valid;

@Controller
public class UtenteController {
	private final UtenteService utenteService;

	public UtenteController(UtenteService utenteService) {
		super();
		this.utenteService = utenteService;
	}
	
	@GetMapping("/registrazione")
	private String iniziaRegistrazione() {
		return "/utente/registrazione";
	}
	
}
