package it.uniroma3.siw.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.http.HttpStatus;
import it.uniroma3.siw.exception.GiocatoreNonTrovatoException;
import it.uniroma3.siw.exception.PartitaNonTrovataException;
import it.uniroma3.siw.exception.SquadraNonTrovataException;

@ControllerAdvice
public class GlobalExceptionHandler {
	 @ExceptionHandler(GiocatoreNonTrovatoException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
	 public String handleGiocatoreNotFound(GiocatoreNonTrovatoException e, Model model) {
	 model.addAttribute("errorMessage", e.getMessage());
	 return "error";
	 }
	 
	 @ExceptionHandler(PartitaNonTrovataException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
	 public String handlePartitaNotFound(PartitaNonTrovataException e, Model model) {
	 model.addAttribute("errorMessage", e.getMessage());
	 return "error";
	 }
	 
	 @ExceptionHandler(SquadraNonTrovataException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
	 public String handleSquadraNotFound(SquadraNonTrovataException e, Model model) {
	 model.addAttribute("errorMessage", e.getMessage());
	 return "error";
	 }
}
