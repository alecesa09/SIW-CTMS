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
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.exception.SquadraUgualeException;
import it.uniroma3.siw.exception.TorneoDiversoException;
import it.uniroma3.siw.service.ArbitroService;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.CredentialService;
import it.uniroma3.siw.service.PartitaService;
import it.uniroma3.siw.service.SquadraIscrittaService;
import it.uniroma3.siw.service.TorneoService;
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
	
}
