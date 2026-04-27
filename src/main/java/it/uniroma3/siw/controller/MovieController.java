package it.uniroma3.siw.controller;

import it.uniroma3.siw.repository.MovieRepository;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;

import it.uniroma3.siw.Movie;
import it.uniroma3.siw.service.MovieService;
import jakarta.validation.Valid;

@Controller
public class MovieController {

  @Autowired MovieService movieService;

  @GetMapping("/movies/{id}")
  public String show(@PathVariable("id") Long id, Model model) {
	    model.addAttribute("movie", this.movieService.findById(id).get());
	    return "movies/show";
	}

  @GetMapping("/movies")
  public String list(Model model) {
	List<Movie> list = this.movieService.findAll();
    model.addAttribute("movies", list );
    model.addAttribute("count",list.size());
    return "movies/list";
  }
  @GetMapping("/movies/new")
  public String createForm(Model model) {
	  model.addAttribute("movie", new Movie());
	  return "movies/form";
  }
  
  @PostMapping("/movie")
  public String newMovie(@Valid @ModelAttribute("movie") Movie movie, BindingResult bindingresult) {
	  if (this.movieService.alreadyExists(movie)) {
          return "movies/formError";
      }
	  if(bindingresult.hasErrors()) {
		  return "movies/form";
	  }
      this.movieService.save(movie);
      return "redirect:/movies";
  }

}
