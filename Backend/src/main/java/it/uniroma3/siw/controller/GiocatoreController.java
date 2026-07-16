package it.uniroma3.siw.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.dto.TorneoDTO;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.service.GiocatoreService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.validation.EtaMinimaValidator;
import jakarta.validation.Valid;

@Controller
public class GiocatoreController {
	private final GiocatoreService giocatoreService;
	private final SquadraService squadraService;
	@Autowired
	private EtaMinimaValidator em;
	public GiocatoreController(GiocatoreService giocatoreService, SquadraService squadraService) {
		this.giocatoreService = giocatoreService;
		this.squadraService=squadraService;
	}
	

	@GetMapping("/giocatore/{id}")
	public String getGiocatore(@PathVariable("id") Long id, Model model) {
		Giocatore giocatore = giocatoreService.findGiocatoreById(id);
		model.addAttribute("giocatore", giocatore);
		return "/giocatore/home";
	}
	@GetMapping("admin/giocatore/crea")
	public String getFormCreaGiocatore(Model model) {
		List<Squadra> squadre = squadraService.findAll();
	    model.addAttribute("giocatore", new Giocatore());
	    model.addAttribute("squadre", squadre);
		return "admin/giocatore/form";
	}
	
	@PostMapping("admin/giocatore/registra")
	public String creaOModificaSquadra(
	        @Valid @ModelAttribute("giocatore") Giocatore giocatore,
	        BindingResult giocatoreBindingResult,
	        @RequestParam(name = "squadra", required = false) Long squadraId, 
	        Model model) throws Exception {
		
		if (squadraId == null) {
	        giocatoreBindingResult.rejectValue("squadra", "giocatore.squadra.mancante", "Selezionare obbligatoriamente una squadra");
	    }
	    this.em.validate(giocatore, giocatoreBindingResult);

	    if(giocatoreBindingResult.hasErrors()) {
	        model.addAttribute("squadre", squadraService.findAll()); 
	        return "admin/giocatore/form";
	    }

	    try {
	         giocatoreService.saveGiocatore(giocatore, squadraId);
	         return "redirect:/admin";
	    } 
	    catch (TorneoNotFoundException | SquadraNonTrovataException e) {
	         giocatoreBindingResult.reject("errore", e.getMessage());
	         
	         model.addAttribute("squadre", squadraService.findAll()); 
	         
	         return "admin/giocatore/form"; 
	    }
	}
	@GetMapping("admin/giocatore/modifica/list")
	public String getListModificaGiocatore(Model model) {
		List<Giocatore> giocatori = giocatoreService.findAllWithSquadra();
		model.addAttribute("giocatori", giocatori);
		return "admin/giocatore/list";
	}
	
	@GetMapping("admin/giocatore/modifica/{id}")
	public String getFormModificaGiocatore(@PathVariable("id") Long id,Model model) {
		List<Squadra> squadre = squadraService.findAll();
	    model.addAttribute("giocatore", giocatoreService.findGiocatoreById(id));
	    model.addAttribute("squadre", squadre);
		return "admin/giocatore/form";
	}
	
	@GetMapping("/admin/giocatore/ricerca")
	public String ricercaGiocatori(
	        @RequestParam(required = false) String nome,
	        @RequestParam(required = false) String cognome,
	        @RequestParam(required = false) String nomeSquadra,
	        Model model) {
	    List<Giocatore> giocatoriTrovati = giocatoreService.ricercaAvanzata(nome, cognome, nomeSquadra);
	    
	    model.addAttribute("giocatori", giocatoriTrovati); 

	    return "admin/giocatore/list"; 
	}
	
}
