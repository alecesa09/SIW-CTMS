package it.uniroma3.siw.controller.rest;


import java.util.List;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.ClassificaDTO;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.dto.TorneoDTO;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraIscrittaService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.service.TorneoService;

@RestController
public class TorneoController {
	private final TorneoService torneoService; 
	private final PartitaService partitaService;
	private final SquadraIscrittaService squadraIscrittaService;
	
    public TorneoController(TorneoService torneoService, PartitaService partitaService, SquadraIscrittaService squadraIscrittaService) {
		this.torneoService = torneoService;
		this.partitaService = partitaService;
		this.squadraIscrittaService = squadraIscrittaService;
	}
    
	@GetMapping("/rest/torneo/{id}")
	public Torneo show(@PathVariable("id") Long id) {
    	Torneo torneo = this.torneoService.findById(id);
    	System.out.println(torneo);
	    return torneo;
    	}
    @GetMapping("/rest/tornei")
	public List<TorneoDTO> list( Model model) {
	    List<TorneoDTO> tornei = this.torneoService.findInfoTornei();
	    model.addAttribute("tornei",tornei);
	    return tornei;
	}
    @GetMapping("/rest/torneo/calendario/{id}")
    	public List<PartitaDTO>calendario(@PathVariable("id") Long id,Model model) {
    		return this.partitaService.findCalendarioByTorneo(id);
    }
    
    @GetMapping("rest/torneo/classifica/{id}")
    public List<ClassificaDTO> geClassifica(@PathVariable("id") Long id){
    		return squadraIscrittaService.getClassifica(id);
    }
}
