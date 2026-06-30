package it.uniroma3.siw.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import it.uniroma3.siw.Commento;
import it.uniroma3.siw.Credentials;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.Utente;
import it.uniroma3.siw.exception.EccezioneCommento;
import it.uniroma3.siw.repository.CommentiRepository;
import it.uniroma3.siw.repository.CredentialsRepository;
import it.uniroma3.siw.repository.PartitaRepository;

@Service
public class CommentoService{
	private final CommentiRepository commentoRepository;
	private final PartitaRepository pr;
	private final CredentialsRepository cr;
	
	
	public Commento findById(Long id) {
		return commentoRepository.findById(id).get();
	}



	public CommentoService(CommentiRepository commentoRepository, PartitaRepository pr, CredentialsRepository cr) {
		this.commentoRepository = commentoRepository;
		this.pr = pr;
		this.cr = cr;
	}

	public List<Commento> findByPartitaId(Long id){
		List<Commento> commenti =  commentoRepository.findByPartitaId(id);
		if (commenti == null) {
		    commenti = new ArrayList<>();
		}
		return commenti;
	}
	
	public void salvaOAggiorna(Long idPartita, Commento commentoDalForm, String usernameLoggato) {   
	    
	    Partita partita = pr.findById(idPartita)
	            .orElseThrow(() -> new EccezioneCommento("Partita non esistente"));
	    
	    Credentials credenziali = cr.findByUsername(usernameLoggato)
	            .orElseThrow(() -> new EccezioneCommento("Utente non valido"));
	    Utente utenteLoggato = credenziali.getUtente();

	    if (commentoDalForm.getId() == null) {
	        commentoDalForm.setUtente(utenteLoggato);
	        commentoDalForm.setPartita(partita);
	        commentoRepository.save(commentoDalForm);
	        
	    } else {
	        Commento commentoEsistente = commentoRepository.findById(commentoDalForm.getId())
	            .orElseThrow(() -> new EccezioneCommento("Commento non trovato"));
	        
	        if (commentoEsistente.getUtente().getId() != utenteLoggato.getId()) {
	            throw new EccezioneCommento("Non sei autorizzato a modificare questo commento");
	        }
	        
	        commentoEsistente.setTesto(commentoDalForm.getTesto());
	        
	        commentoRepository.save(commentoEsistente);
	    }
	}
}
