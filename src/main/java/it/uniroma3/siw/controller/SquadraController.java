package it.uniroma3.siw.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.dto.GiocatoreDto;
import it.uniroma3.siw.service.GiocatoreService;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraService;

@Controller
public class SquadraController {
	private final SquadraService squadraService; 
	private final PartitaService partitaService;
	private final GiocatoreService giocatoreService;

    public SquadraController(SquadraService squadraService, PartitaService partitaService,GiocatoreService giocatoreService) {
        this.squadraService = squadraService;
        this.partitaService = partitaService;
        this.giocatoreService =giocatoreService;
    }
	
	@GetMapping("/squadra/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
	    Squadra squadra = this.squadraService.findById(id);
	    List<GiocatoreDto> giocatori = this.giocatoreService.findGiocatoreBySquadra(id);
	    model.addAttribute("squadra",squadra );
	    model.addAttribute("giocatori",giocatori );
	    return "squadra/home";
	}
	
	@GetMapping("/squadre")
	public String list( Model model) {
	    List<Squadra> squadre = this.squadraService.findAll();
	    model.addAttribute("squadre",squadre);
	    return "squadra/list";
	}
	
	@GetMapping("/squadra/calendario/{id}")
	public String calendario(@PathVariable("id") Long id, Model model) {
	    List<Partita> partite = partitaService.findCalendarioBySquadra(id);
	    model.addAttribute("partite",partite );
	    return "squadra/calendario";
	}
}
