package it.uniroma3.siw.controller;

import java.time.Clock;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StopWatch;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.service.TorneoService;
@Controller
public class TorneoController {
	private final TorneoService torneoService; 
	private final SquadraService squadraService;
	private final PartitaService partitaService;

    public TorneoController(TorneoService torneoService,SquadraService squadraService,PartitaService partitaService) {
        this.torneoService = torneoService;
        this.squadraService = squadraService;
        this.partitaService = partitaService;
    }
    
    @GetMapping("/tornei/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
    	Torneo torneo = this.torneoService.findById(id);
    	List<Object[]> squadre = this.squadraService.findbyTorneoid_nome_id(id);
	    model.addAttribute("torneo",torneo );
	    model.addAttribute("iscrizioni",squadre);
	    return "torneo/home";
	}
    @GetMapping("/tornei")
	public String list( Model model) {
	    List<Torneo> tornei = this.torneoService.findAll();
	    model.addAttribute("tornei",tornei);
	    return "torneo/list";
	}
    @GetMapping("/tornei/calendario/{id}")
    	public String calendario(@PathVariable("id") Long id,Model model) {
    		List<Partita> partite = this.partitaService.findCalendarioByTorneo(id);
    		model.addAttribute("partite",partite);
    		return "torneo/calendario";
    }
}
