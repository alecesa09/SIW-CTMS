package it.uniroma3.siw.service;

import java.util.ArrayList;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.HomeSearchDTO;
import it.uniroma3.siw.repository.GiocatoreRepository;
import it.uniroma3.siw.repository.SquadraRepository;
import it.uniroma3.siw.repository.TorneoRepository;

@Service
public class HomeService {
	private final GiocatoreRepository gr;
	private final TorneoRepository tr;
	private final SquadraRepository sr;
	
	public HomeService(GiocatoreRepository gr, TorneoRepository tr, SquadraRepository sr) {
		this.gr = gr;
		this.tr = tr;
		this.sr = sr;
	}
	
	private static final Logger logger = LoggerFactory.getLogger(HomeService.class);
	
	public List<HomeSearchDTO> search(String str){
		List<HomeSearchDTO> risultato = new ArrayList<HomeSearchDTO>();
		for(Giocatore giocatore : gr.findTop5ByNomeContainingIgnoreCaseOrCognomeContainingIgnoreCase(str,str)) {
			risultato.add(new HomeSearchDTO(giocatore.getId(), giocatore.getNome(),giocatore.getCognome()));
		}
		logger.info("giocatori trovati:{}",risultato);
		for(Torneo torneo: tr.findTop5ByNomeContainingIgnoreCase(str)) {
			risultato.add(new HomeSearchDTO(torneo.getId(), torneo.getNome()));
		}
		logger.info("giocatori e tornei trovati:{}",risultato);
		for(Squadra squadra: sr.findTop5ByNomeContainingIgnoreCase(str)) {
			risultato.add(new HomeSearchDTO(squadra.getLogo(), squadra.getId(), squadra.getNome()));
		}
		logger.info("giocatori e tornei e squadre trovati:{}",risultato);
		return risultato;
	}
}
