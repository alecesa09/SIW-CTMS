package it.uniroma3.siw.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.ui.Model;
import it.uniroma3.siw.service.MovieService;

@Controller
public class HomeController {
	 @Autowired MovieService movieService;
	 @GetMapping("/")
	  public String start(Model model) {
		  model.addAttribute("count",movieService.count());	
		  return "index";
	  }
}
