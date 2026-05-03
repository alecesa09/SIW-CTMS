package it.uniroma3.siw.controller;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import it.uniroma3.siw.Artist;
import it.uniroma3.siw.Movie;
import it.uniroma3.siw.service.ArtistService;
import it.uniroma3.siw.service.MovieService;
import jakarta.validation.Valid;

@Controller
public class MovieController {

  @Autowired MovieService movieService;
  @Autowired ArtistService artistService;

  @GetMapping("/movies/{id}")
  public String show(@PathVariable("id") Long id, Model model) {
	    Movie movie = this.movieService.findByIdConAttori(id);
	    model.addAttribute("movie",movie );
	    model.addAttribute("attori",movie.getActors());
	    return "movies/show";
	}

  @GetMapping("/movies")
  public String list(Model model) {
    model.addAttribute("movies",this.movieService.findAll());
    return "movies/list";
  }
  @GetMapping("/movies/new")
  public String createForm(Model model) {
	  model.addAttribute("movie", new Movie());
	  model.addAttribute("artistsList",this.artistService.findAll());
	  return "movies/form";
  }
  
  @PostMapping("/movie")
  public String newMovie(@Valid @ModelAttribute("movie") Movie movie, BindingResult bindingresult,
		  					@RequestParam(required=false) Long artistId) {
	  if(bindingresult.hasErrors()) {
		  return "movies/form";
	  }
	  if (this.movieService.alreadyExists(movie)) {
          if(this.movieService.actorIsPresent(movie, artistId)){
        	  return "movies/form";
          }
          else {
        	  if(artistId != null) {
        		  movieService.salvaAttorenelfilm(movie,artistId);
              }
        	  return "redirect:/movies/form";
          }
      }
	  
	  this.movieService.save(movie);
	  if(artistId != null) {
		  movieService.salvaAttorenelfilm(movie,artistId);
	    }
      return "redirect:/movies/form";
  }
}
