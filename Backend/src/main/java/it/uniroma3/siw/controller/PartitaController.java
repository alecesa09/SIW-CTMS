package it.uniroma3.siw.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.CredentialService;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraIscrittaService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.service.TorneoService;
import jakarta.validation.Valid;
@Controller
public class PartitaController {
	
	private final PartitaService partitaService;
	private final CommentoService commentoService;
	private final CredentialService credentialService;
	private final SquadraIscrittaService squadraIscrittaService;
	private final TorneoService torneoService;
	
	public PartitaController(PartitaService partitaService, CommentoService commentoService,CredentialService credentialService,SquadraIscrittaService squadraService,TorneoService torneoService ) {
		this.partitaService = partitaService;
		this.commentoService=commentoService;
		this.credentialService=credentialService;
		this.squadraIscrittaService=squadraService;
		this.torneoService=torneoService;
	}

	@GetMapping("/partita/{id}")
	public String getPartita(@PathVariable("id") Long id, Model model,Principal principal) {
		Partita partita = partitaService.findById(id);
		model.addAttribute("partita", partita);
        List<Commento> commenti = commentoService.findByPartitaId(id);
        model.addAttribute("commenti", commenti);
        if (principal != null) {
            Credentials credenziali = credentialService.findByUsername(principal.getName());
            Long idUtenteLoggato = credenziali.getUtente().getId();
            model.addAttribute("idUtenteLoggato", idUtenteLoggato);
        }
        
        return "partita/home";
	}
	
	@GetMapping("admin/partita/crea/ListTornei")
	public String getFormCreaGiocatore(Model model) {
		List<Torneo> tornei = torneoService.findAll();
	    model.addAttribute("tornei", tornei);
		return "admin/partita/ListTornei";
	}
	@GetMapping("admin/partita/crea/{idTorneo}")
	public String getFormCreaPartita(@PathVariable("idTorneo") Long idTorneo, Model model) {
	    // 1. Recuperi il torneo dal database
	    Torneo torneo = torneoService.findById(idTorneo); 
	    
	    // 2. Crei l'oggetto partita
	    Partita partita = new Partita();
	    
	    // 3. ASSEGNAZIONE DIRETTA: Colleghi il torneo all'oggetto partita
	    partita.setTorneo(torneo);
	    
	    // 4. Passi tutto al model
	    model.addAttribute("torneo", torneo);
	    model.addAttribute("partita", partita); // Ora la partita ha già il torneo impostato
	    model.addAttribute("squadreIscritte", squadraIscrittaService.findByTorneoWithSquadra(torneo));
	    
	    return "admin/partita/form";
	}
	/*
	@PostMapping("admin/partita/registra")
	public String creaOModificaSquadra(
	        @Valid @ModelAttribute("giocatore") Partita partita,
	        BindingResult BindingResult,
	        @RequestParam(name = "squadra", required = false) Long squadraId, 
	        Model model) throws Exception {
		
		if (squadraId == null) {
	        BindingResult.rejectValue("squadra", "giocatore.squadra.mancante", "Selezionare obbligatoriamente una squadra");
	    }

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
	*/
}
