package it.uniroma3.siw.validation;

import java.time.LocalDate;
import java.time.Period;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;

import it.uniroma3.siw.Giocatore;


@Component
public class EtaMinimaValidator implements Validator {

 @Override
 public void validate(Object o, Errors errors) {
	 Giocatore g = (Giocatore)o;
	 if (g.getNascita() != null) {
		    int eta = Period.between(g.getNascita(), LocalDate.now()).getYears();
		    if (eta < 12) {
		        errors.rejectValue("nascita", "giocatore.troppoGiovane", "Il giocatore deve avere almeno 12 anni.");
		    }
		}
 }

 @Override
 public boolean supports(Class<?> aClass) {
	 return Giocatore.class.equals(aClass);
 }
}
