package it.uniroma3.siw.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.service.PartitaService;

@RestController
public class PartitaRestController {
	private PartitaService partitaService;

	public PartitaRestController(PartitaService partitaService) {
		this.partitaService = partitaService;
	}
	
	
	/*
	@GetMapping(value="/rest/partita/{id}")
	public Partita getPartita(@PathVariable("id")Long id) {
		return this.partitaService.getPartita(id);
	}
	
	public List<Partita> getPartite(){
		return this.partitaService.getTuttePartite();
	}*/
}
