package it.uniroma3.siw.validation;

import java.time.LocalDate;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import it.uniroma3.siw.Partita;

@Component
public class PartitaValidator implements Validator{
	@Override
	 public void validate(Object o, Errors errors) {
		 Partita p = (Partita)o;
		 if(p.getStato()==Partita.Stato.PROGRAMMATA && p.getData().isBefore(LocalDate.now()) ) {
			 errors.rejectValue("stato partita", "una partita programmata non puo essere nel passato");
		 }
		 if(p.getStato()==Partita.Stato.TERMINATA && p.getData().isAfter(LocalDate.now())) {
			 errors.rejectValue("stato partita", "una partita terminata non puo essere nel futuro");
		 }
		 if(p.getStato()==Partita.Stato.IN_SOSPESO && p.getData().isAfter(LocalDate.now())) {
			 errors.rejectValue("stato partita", "una partita sospesa non puo essere nel futuro");
		 }
	 }

	 @Override
	 public boolean supports(Class<?> aClass) {
		 return Partita.class.equals(aClass);
	 }
}
