package it.uniroma3.siw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Arbitro;
import it.uniroma3.siw.service.ArbitroService;

@Controller
public class ArbitroController {
	private final ArbitroService arbitroService;
	
	
	public ArbitroController(ArbitroService arbitroService) {
		super();
		this.arbitroService = arbitroService;
	}


	@GetMapping("/arbitro/{id}")
	private String getArbitro(@PathVariable("id") Long id, Model model) {
		Arbitro arbitro = arbitroService.getArbitro(id);
		model.addAttribute("arbitro", arbitro);
		return	"/arbitro/home";
		}
	
}
