package it.uniroma3.siw.exception;

public class TorneoNotFoundException extends RuntimeException {
	public  TorneoNotFoundException (Long id) {
		 super("il torneo con id: " + id + " non esiste.");
		 }

	public TorneoNotFoundException() {
		// TODO Auto-generated constructor stub
	}
}
