package it.uniroma3.siw.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.Utente;
import it.uniroma3.siw.dto.GiocatoreDto;
import it.uniroma3.siw.dto.TorneoDTO;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.service.GiocatoreService;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.service.TorneoService;
import jakarta.validation.Valid;

@Controller
public class SquadraController {
	private final SquadraService squadraService; 
	private final PartitaService partitaService;
	private final GiocatoreService giocatoreService;
	private final TorneoService torneoService;

    public SquadraController(SquadraService squadraService, PartitaService partitaService,GiocatoreService giocatoreService,TorneoService torneoService) {
        this.squadraService = squadraService;
        this.partitaService = partitaService;
        this.giocatoreService =giocatoreService;
        this.torneoService = torneoService;
    }
	
	@GetMapping("/squadra/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
	    Squadra squadra = this.squadraService.findById(id);
	    List<GiocatoreDto> giocatori = this.giocatoreService.findGiocatoreBySquadra(id);
	    List<Partita> partite = partitaService.findUltime5(id);
	    model.addAttribute("squadra",squadra );
	    model.addAttribute("giocatori",giocatori );
	    model.addAttribute("partite",partite );
	    return "squadra/home";
	}

	@GetMapping("/admin/registrazione/squadra")
	public String getFormCreaSquadra(Model model){
	    List<TorneoDTO> tornei = torneoService.findInfoTornei();
	    model.addAttribute("squadra", new Squadra());
	    model.addAttribute("tornei", tornei);
	    return "admin/squadra/form";
	}
	
	
	@GetMapping("/admin/squadra/list")
	public String getFormModificaSquadra(Model model){
		List<Squadra> squadre =squadraService.findAll();
	    model.addAttribute("squadre", squadre);
	    return "admin/squadra/list";
	}
	
	@GetMapping("/admin/modifica/squadra/{id}")
	public String getFormModificaSquadra(@PathVariable("id") Long id,Model model){
		Squadra squadra =squadraService.findById(id);
		List<Long> iscrizioniCorrenti = torneoService.findIdTorneiBySquadra(id);
		List<TorneoDTO> tornei = torneoService.findInfoTornei();
	    model.addAttribute("squadra", squadra);
	    model.addAttribute("tornei", tornei);
	    model.addAttribute("IscrizioniCorrenti", iscrizioniCorrenti);
	    return "admin/squadra/form";
	}
	
	@PostMapping("/admin/registrazione/squadra")
	public String creaOModificaSquadra(@Valid @ModelAttribute("squadra") Squadra squadra,BindingResult squadraBindingResult,
										@RequestParam(required = false) List<Long> tornei, Model model){
		if(squadraBindingResult.hasErrors()) {
			return "redirect:admin/squadra/form";
		}
		 try {
			 squadraService.saveSquadra(squadra,tornei);
			 return "redirect:/admin";
		 }
		 catch (TorneoNotFoundException e) {
			 squadraBindingResult.reject("errore", e.getMessage());
			 return "admin/squadra/form";
		 }
	}
}
