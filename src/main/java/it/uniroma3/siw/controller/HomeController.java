package it.uniroma3.siw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import it.uniroma3.siw.service.PartitaService;
@Controller
public class HomeController {
	private final PartitaService partitaService;
    
	public HomeController(PartitaService partitaService) {
		this.partitaService = partitaService;
	}

	@GetMapping
	public String start() {
		return "index";
	}
}
