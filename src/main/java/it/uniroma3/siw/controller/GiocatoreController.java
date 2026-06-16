package it.uniroma3.siw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.service.GiocatoreService;


@Controller
public class GiocatoreController {

	private final GiocatoreService giocatoreService;
	public GiocatoreController(GiocatoreService giocatoreService) {
        this.giocatoreService =giocatoreService;
    }
	@GetMapping("/giocatore/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Giocatore giocatore = this.giocatoreService.findGiocatoreById(id);
	    model.addAttribute("giocatore",giocatore);
	    return "giocatore/home";
	}
}
