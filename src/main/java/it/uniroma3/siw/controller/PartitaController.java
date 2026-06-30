package it.uniroma3.siw.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.service.CommentoService;
import it.uniroma3.siw.service.CredentialService;
import it.uniroma3.siw.service.PartitaService;
@Controller
public class PartitaController {
	
	private final PartitaService partitaService;
	private final CommentoService commentoService;
	private final CredentialService credentialService;
	
	public PartitaController(PartitaService partitaService, CommentoService commentoService,CredentialService credentialService ) {
		this.partitaService = partitaService;
		this.commentoService=commentoService;
		this.credentialService=credentialService;
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
