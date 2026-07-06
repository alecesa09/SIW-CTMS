package it.uniroma3.siw;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import it.uniroma3.siw.exception.GiocatoreNonTrovatoException;
import it.uniroma3.siw.exception.PartitaNonTrovataException;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.service.SquadraService;

@ControllerAdvice
public class GlobalExceptionHandler {
	private static final Logger logger =LoggerFactory.getLogger(SquadraService.class);
	 @ExceptionHandler(GiocatoreNonTrovatoException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
		public String handleGiocatoreNotFound(GiocatoreNonTrovatoException e, Model model) {
		model.addAttribute("errorMessage", e.getMessage());
		return "error/404";
	 }
	 
	 @ExceptionHandler(PartitaNonTrovataException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
		public String handlePartitaNotFound(PartitaNonTrovataException e, Model model) {
		model.addAttribute("errorMessage", e.getMessage());
		return "error/404";
	 }
	 
	 @ExceptionHandler(SquadraNonTrovataException.class)
	 @ResponseStatus(HttpStatus.NOT_FOUND)
		public String handleSquadraNotFound(SquadraNonTrovataException e, Model model) {
		model.addAttribute("errorMessage", e.getMessage());
		return "error/404";
	 }

	 @ExceptionHandler(Exception.class)
	 @ResponseStatus(HttpStatus.INTERNAL_SERVER_ERROR)
		public String handleUnexpectedException(Exception e, Model model) {
		model.addAttribute("errorMessage",e.getMessage());
		logger.debug(e.getMessage());
		return "error/500";
	}
}
