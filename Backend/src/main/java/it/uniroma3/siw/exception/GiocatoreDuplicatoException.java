package it.uniroma3.siw.exception;

import it.uniroma3.siw.Giocatore;

public class GiocatoreDuplicatoException extends RuntimeException {
	public  GiocatoreDuplicatoException (Giocatore g) {
		 super("Il giocatore con nome: " + g.getNome() + " con cognome:" + g.getCognome() + "e con data di nascita:" + g.getNascita() + "esiste gia");
		 }
}
