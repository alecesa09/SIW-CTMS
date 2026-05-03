package it.uniroma3.siw.controller;

import java.util.List;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import it.uniroma3.siw.Artist;
import it.uniroma3.siw.Movie;
import it.uniroma3.siw.service.ArtistService;
import jakarta.validation.Valid;

@Controller
public class ArtistController {
	private ArtistService artistService;
	public ArtistController(ArtistService artistService) {
			this.artistService = artistService;
	}
	  

	  @GetMapping("/artist/{id}")
	  public String show(@PathVariable("id") Long id, Model model) {
		    model.addAttribute("artist", this.artistService.findById(id));
		    return "artist/show";
		}

	  @GetMapping("/artists")
	  public String list(Model model) {
		List<Artist> list = this.artistService.findAll();
	    model.addAttribute("artists", list );
	    model.addAttribute("count",list.size());
	    return "artist/list";
	  }
	  
	  @GetMapping("/artist/new")
	  public String createForm(Model model) {
		  model.addAttribute("artist", new Artist());
		  return "artist/form";
	  }
	  
	  @PostMapping("/artist")
	  public String newMovie(@Valid @ModelAttribute("artist") Artist artist, BindingResult bindingresult) {
		  if(bindingresult.hasErrors()) {
			  return "artist/form";
		  }
	      this.artistService.save(artist);
	      return "redirect:/artists";
	  }

}
