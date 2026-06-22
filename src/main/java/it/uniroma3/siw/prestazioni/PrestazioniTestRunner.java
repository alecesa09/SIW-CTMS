package it.uniroma3.siw.prestazioni;

import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;
import org.springframework.util.StopWatch;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import it.uniroma3.siw.repository.TorneoRepository;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.SquadraIscritta;

@Component
public class PrestazioniTestRunner implements CommandLineRunner {
   
    @Autowired
    private TorneoRepository torneoRepository;

    @Override
    @Transactional // strategie per il fetch dellaa classifica
    public void run(String... args) throws Exception {
    	
       
        StopWatch stopWatchBase = new StopWatch();
        stopWatchBase.start();
        Torneo torneoBase = torneoRepository.findByIdWithIscrizioni(2L);
        List<SquadraIscritta> iscrizioni = torneoBase.getIscrizioni();
        ;
        for (SquadraIscritta iscrizione : iscrizioni) {
             iscrizione.getSquadra().getNome();
        }
        stopWatchBase.stop();
        System.out.println("Tempo impiegato (LAZY/EAGER dall'entità): " + stopWatchBase.getTotalTimeSeconds() + " secondi");
	
         /*
        // TEST 2: JOIN FETCH (Puoi farlo girare di seguito!)
        // Presuppone che tu abbia creato nel TorneoRepository un metodo: 
        // @Query("SELECT t FROM Torneo t JOIN FETCH t.iscrizioni WHERE t.id = :id")
        // Torneo findByIdWithIscrizioni(Long id);
        StopWatch stopWatchJoin = new StopWatch();
        stopWatchJoin.start();
        
        Torneo torneoJoin = torneoRepository.findByIdWithSquadre(2L);
        List<SquadraIscritta> iscrizioni2  = torneoJoin.getIscrizioni();
        
        for (SquadraIscritta iscrizione : iscrizioni2) {
             iscrizione.getSquadra().getNome();
        }
        
        stopWatchJoin.stop();
        System.out.println("Tempo impiegato (JOIN FETCH): " + stopWatchJoin.getTotalTimeSeconds() + " secondi" + iscrizioni2.size());
        */
        
        System.out.println("--- FINE TEST PRESTAZIONI ---");
       
    }
}
