package it.uniroma3.siw.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TorneiController {
	@Value("${app.frontend.url}")
    private String frontendUrl;
    @GetMapping("/tornei")
    public String react() {
        return "redirect:" + frontendUrl +"/tornei"; 
    }
}
