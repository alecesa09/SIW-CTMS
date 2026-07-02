package it.uniroma3.siw.exception;

public class PartitaNonTrovataException extends RuntimeException {

	public  PartitaNonTrovataException (Long id) {
		 super("La partita con id: " + id + " non esiste.");
		 }
	
}
