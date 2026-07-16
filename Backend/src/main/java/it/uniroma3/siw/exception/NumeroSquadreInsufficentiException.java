package it.uniroma3.siw.exception;

import it.uniroma3.siw.Torneo;

public class NumeroSquadreInsufficentiException extends RuntimeException{
	public  NumeroSquadreInsufficentiException (Torneo torneo) {
		 super("il torneo id: " + torneo.getNome() + " non ha abbastanza squadre iscritte per creare una partita.");
		 }
}
