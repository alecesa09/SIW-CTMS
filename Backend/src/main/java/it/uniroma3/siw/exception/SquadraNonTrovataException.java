package it.uniroma3.siw.exception;

public class SquadraNonTrovataException extends RuntimeException {
	public  SquadraNonTrovataException (Long id) {
		 super("la squadra con id: " + id + " non esiste.");
		 }
}
