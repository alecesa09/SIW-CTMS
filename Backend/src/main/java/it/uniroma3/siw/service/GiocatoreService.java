package it.uniroma3.siw.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Transactional;



import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.dto.GiocatoreDto;
import it.uniroma3.siw.exception.GiocatoreDuplicatoException;
import it.uniroma3.siw.exception.GiocatoreNonTrovatoException;
import it.uniroma3.siw.exception.SquadraNonTrovataException;
import it.uniroma3.siw.repository.GiocatoreRepository;
import it.uniroma3.siw.repository.SquadraRepository;

@Service
public class GiocatoreService {
	private final GiocatoreRepository giocatoreRepository;
	private final SquadraRepository  squadraRepository;
	
    public GiocatoreService(GiocatoreRepository giocatoreRepository, SquadraRepository  squadraRepository) {
        this.giocatoreRepository = giocatoreRepository;
        this.squadraRepository =squadraRepository;
    }
    private static final Logger logger =LoggerFactory.getLogger(SquadraService.class);
    @Transactional(readOnly = true)
	public Giocatore findGiocatoreById(long id){
		Giocatore giocatore = this.giocatoreRepository.findGiocatoreFetchSquadra(id);
		if(giocatore == null) {
			throw(new GiocatoreNonTrovatoException(id));
		}
		return giocatore;
	}
	
	@Transactional(readOnly = true)
	public List<GiocatoreDto> findGiocatoreBySquadra(long id){
		List<GiocatoreDto> giocatori = this.giocatoreRepository.findParametriBySquadraId(id);
		return giocatori;
	}
	
	@Transactional(isolation = Isolation.SERIALIZABLE)
	public void saveGiocatore(Giocatore giocatore,Long idSquadra) throws Exception {
		 logger.info("Transazione modifica/creazione giocatore iniziata: " + giocatore.getNome() + " "+ giocatore.getCognome());
		 if (giocatore.getId()!=null) {
			 modificaGiocatore(giocatore,idSquadra);
		 }
		 else {
			 creaGiocatore(giocatore,idSquadra);
		 }
	}
	
	public void creaGiocatore(Giocatore giocatore,Long idSquadra) throws GiocatoreDuplicatoException {
		if(giocatoreRepository.existsByNomeAndCognomeAndNascita(giocatore.getNome(),giocatore.getCognome(),giocatore.getNascita())) {
			throw new GiocatoreDuplicatoException(giocatore);
		}
		Squadra squadra = squadraRepository.findById(idSquadra).orElseThrow(() ->new SquadraNonTrovataException(idSquadra));
		giocatore.setSquadra(squadra);
		logger.debug("id prima del salvataggio:" + giocatore.getId());
		giocatoreRepository.save(giocatore);
	}
	
	public void modificaGiocatore(Giocatore giocatore,Long idSquadra) throws GiocatoreNonTrovatoException {
		if(!(giocatoreRepository.existsById(giocatore.getId()))) {
			throw new GiocatoreNonTrovatoException(giocatore.getId());
		}
		Squadra squadra = squadraRepository.findById(idSquadra).orElseThrow(() ->new SquadraNonTrovataException(idSquadra));
		giocatore.setSquadra(squadra);
		giocatoreRepository.save(giocatore);
	}
	
	@Transactional(readOnly = true)
	public List<Giocatore> findAllWithSquadra(){
		return giocatoreRepository.findAllWithSquadra();
	}
	@Transactional(readOnly = true)
	public List<Giocatore> ricercaAvanzata(String nome, String cognome, String nomeSquadra){
		return giocatoreRepository.ricercaAvanzata(nome,cognome,nomeSquadra);
	}

}
