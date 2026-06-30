package it.uniroma3.siw.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.PartitaService;
@Controller
public class PartitaController {
	
	private final PartitaService partitaService;
	private final CommentoService commentoService;
	
	public PartitaController(PartitaService partitaService, CommentoService commentoService ) {
		this.partitaService = partitaService;
		this.commentoService = commentoService;
	}

	@GetMapping("/partita/{id}")
	public String getPartita(@PathVariable("id") Long id, Model model) {
		Partita partita = partitaService.findById(id);
		model.addAttribute("partita", partita);
        List<Commento> commenti = commentoService.findByPartitaId(id);
        model.addAttribute("commenti", commenti);
		return "partita/home";
	}
}
