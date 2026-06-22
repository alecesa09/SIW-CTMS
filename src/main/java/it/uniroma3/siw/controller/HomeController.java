package it.uniroma3.siw.controller;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.service.PartitaService;
@RestController
public class HomeController {
	private final PartitaService partitaService;
    
	public HomeController(PartitaService partitaService) {
		this.partitaService = partitaService; 
	}

	@GetMapping
	public String start(Model model) {
		return "index";
	}
}
