package it.uniroma3.siw.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.service.SquadraService;

@Controller
public class SquadraController {
	private final SquadraService squadraService; 

    public SquadraController(SquadraService squadraService) {
        this.squadraService = squadraService;
    }
	
	@GetMapping("/squadra/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
	    Squadra squadra = this.squadraService.findById(id);
	    model.addAttribute("squadra",squadra );
	    return "squadra/home";
	}
	@GetMapping("/squadre")
	public String list( Model model) {
	    List<Squadra> squadre = this.squadraService.findAll();
	    model.addAttribute("squadre",squadre);
	    return "squadra/list";
	}
}
