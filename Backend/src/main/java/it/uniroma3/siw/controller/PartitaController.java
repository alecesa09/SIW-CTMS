package it.uniroma3.siw.controller;

import java.security.Principal;
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

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.exception.SquadraUgualeException;
import it.uniroma3.siw.exception.TorneoDiversoException;
import it.uniroma3.siw.exception.TorneoNotFoundException;
import it.uniroma3.siw.service.ArbitroService;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.CredentialService;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraIscrittaService;
import it.uniroma3.siw.service.SquadraService;
import it.uniroma3.siw.service.TorneoService;
import it.uniroma3.siw.validation.EtaMinimaValidator;
import it.uniroma3.siw.validation.PartitaValidator;
import jakarta.validation.Valid;
@Controller
public class PartitaController {
	
	private final PartitaService partitaService;
	private final CommentoService commentoService;
	private final CredentialService credentialService;
	private final SquadraIscrittaService squadraIscrittaService;
	private final TorneoService torneoService;
	private final ArbitroService arbitroService;
	
	@Autowired
	private PartitaValidator pv;
	public PartitaController(PartitaService partitaService, CommentoService commentoService,CredentialService credentialService
								,SquadraIscrittaService squadraService,TorneoService torneoService,ArbitroService arbitroService ) {
		this.partitaService = partitaService;
		this.commentoService=commentoService;
		this.credentialService=credentialService;
		this.squadraIscrittaService=squadraService;
		this.torneoService=torneoService;
		this.arbitroService=arbitroService;
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
	    Torneo torneo = torneoService.findById(idTorneo); 
	    
	    Partita partita = new Partita();
	    
	    partita.setTorneo(torneo);
	    
	    model.addAttribute("torneo", torneo);
	    model.addAttribute("partita", partita);
	    model.addAttribute("squadreIscritte", squadraIscrittaService.findByTorneoWithSquadra(torneo));
	    model.addAttribute("arbitri", this.arbitroService.findAll());
	    
	    return "admin/partita/form";
	}

	@PostMapping("admin/partita/registra")
	public String creaOModificaSquadra(
	        @Valid @ModelAttribute("partita") Partita partita,
	        BindingResult BindingResult,
	        Model model) throws Exception {
		this.pv.validate(partita, BindingResult);

		if(BindingResult.hasErrors()) {
		    model.addAttribute("torneo", partita.getTorneo());
		    model.addAttribute("squadreIscritte", squadraIscrittaService.findByTorneoWithSquadra(partita.getTorneo()));
		    model.addAttribute("arbitri", arbitroService.findAll());
		    return "admin/partita/form";
		}
	    try {
	         partitaService.savePartita(partita);
	         return "redirect:/admin";
	    } 
	    catch (TorneoDiversoException | SquadraUgualeException e) {
	        BindingResult.reject("errore", e.getMessage());
	        model.addAttribute("torneo", partita.getTorneo());
	        model.addAttribute("squadreIscritte", squadraIscrittaService.findByTorneoWithSquadra(partita.getTorneo())); 
	        model.addAttribute("arbitri", arbitroService.findAll());
	        return "admin/partita/form"; 
	    }
	}
	@GetMapping("admin/partita/modifica/list")
	public String getListModificaGiocatore(Model model) {
		List<Partita> partite = partitaService.findAllWithSquadre();
		model.addAttribute("partite", partite);
		return "admin/partita/list";
	}
	
	@GetMapping("admin/partita/modifica/{id}")
	public String getFormModificaGiocatore(@PathVariable("id") Long id,Model model) {
	    Partita partita = partitaService.findById(id);
	    model.addAttribute("torneo", partita.getTorneo());
	    model.addAttribute("partita", partita);
	    model.addAttribute("squadreIscritte", squadraIscrittaService.findByTorneoWithSquadra(partita.getTorneo()));
	    model.addAttribute("arbitri", this.arbitroService.findAll());
	    
	    return "admin/partita/form";
	}
	@GetMapping("/admin/partita/ricerca")
	public String ricercaGiocatori(
	        @RequestParam(required = false) String nomeTorneo,
	        @RequestParam(required = false) Integer anno,
	        @RequestParam(required = false) String nomeSquadra,
	        Model model) {
		List<Partita> partiteTrovate = partitaService.ricercaAvanzata(nomeTorneo, anno, nomeSquadra);
		    
		model.addAttribute("partite", partiteTrovate);

	    return "admin/partita/list"; 
	}
	
}
