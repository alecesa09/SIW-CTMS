package it.uniroma3.siw.exception;


public class GiocatoreNonTrovatoException extends RuntimeException {
	public  GiocatoreNonTrovatoException (Long id) {
		 super("Il giocatore con id: " + id + " non esiste.");
		 }

}
