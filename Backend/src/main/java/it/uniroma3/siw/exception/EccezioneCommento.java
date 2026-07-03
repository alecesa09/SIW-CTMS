package it.uniroma3.siw.exception;

public class EccezioneCommento extends RuntimeException {

	
    public EccezioneCommento() {
        
    }
    public EccezioneCommento(String message) {
        super(message);
    }
}
