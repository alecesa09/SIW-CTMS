package it.uniroma3.siw.exception;

import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;

public class TorneoDiversoException extends RuntimeException {
    
    public TorneoDiversoException(Torneo torneo, SquadraIscritta sc, SquadraIscritta st) {
         super(String.format("I tornei non corrispondono!%n"
                 + "Torneo Partita: %s%n"
                 + "Squadra Casa (%s): torneo %s%n"
                 + "Squadra Trasferta (%s): torneo %s",
                 torneo.getNome(),
                 sc.getSquadra().getNome(), sc.getTorneo().getNome(),
                 st.getSquadra().getNome(), st.getTorneo().getNome()));
    }
}
