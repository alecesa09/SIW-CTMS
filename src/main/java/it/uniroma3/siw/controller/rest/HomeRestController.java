package it.uniroma3.siw.controller.rest;

import java.util.List;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.service.PartitaService;
@RestController
public class HomeRestController {
	private final PartitaService partitaService;
    
	public HomeRestController(PartitaService partitaService) {
		this.partitaService = partitaService; 
	}

	@GetMapping("/rest/partiteOggi")
	public List<PartitaDTO> start() {
		return partitaService.findPartiteOggi();
	}
}
