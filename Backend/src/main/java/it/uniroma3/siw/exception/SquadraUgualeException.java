package it.uniroma3.siw.exception;


public class SquadraUgualeException extends RuntimeException {
	public SquadraUgualeException() {
		 super("una squadra non puo giocare contro se stessa");
		 }
}
