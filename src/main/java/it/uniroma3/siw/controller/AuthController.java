package it.uniroma3.siw.controller;

import jakarta.servlet.http.HttpServletRequest;
import java.security.Principal;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AuthController {

    @GetMapping("/login")
    public String showLoginForm(HttpServletRequest request, Principal principal) {
        if (principal != null) {
            return "redirect:" + frontendUrl;
        }
        
        String referer = request.getHeader("Referer");
        
        if (referer != null && !referer.contains("/login")) {
            request.getSession().setAttribute("url_pre_login", referer);
        }
        
        return "utente/login"; 
    }

    
    @Value("${app.frontend.url}")
    private String frontendUrl;

    @GetMapping("/")
    public String react() {
        return "redirect:" + frontendUrl; 
    }
}
