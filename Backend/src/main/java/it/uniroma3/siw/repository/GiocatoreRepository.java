package it.uniroma3.siw.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.dto.GiocatoreDto;

public interface GiocatoreRepository extends JpaRepository<Giocatore, Long>{
    @Query("SELECT new it.uniroma3.siw.dto.GiocatoreDto(g.id, g.nome, g.cognome) FROM Giocatore g WHERE g.squadra.id = :squadraId")
    public List<GiocatoreDto> findParametriBySquadraId(@Param("squadraId") Long squadraId);
    
    public List<Giocatore> findTop5ByNomeContainingIgnoreCaseOrCognomeContainingIgnoreCase(String parolaNome, String parolaCognome);
    
    @Query("SELECT g FROM Giocatore g JOIN FETCH g.squadra WHERE g.id = :id")
    public Giocatore findGiocatoreFetchSquadra(@Param("id") Long id);
    
    boolean existsByNomeAndCognomeAndNascita(String nome, String cognome, LocalDate dataDiNascita);
    
    @Query("SELECT g FROM Giocatore g LEFT JOIN FETCH g.squadra")
    List<Giocatore> findAllWithSquadra();
    
    @Query("SELECT g FROM Giocatore g WHERE " +
            "(:nome IS NULL OR :nome = '' OR LOWER(g.nome) LIKE LOWER(CONCAT('%', :nome, '%'))) AND " +
            "(:cognome IS NULL OR :cognome = '' OR LOWER(g.cognome) LIKE LOWER(CONCAT('%', :cognome, '%'))) AND " +
            "(:nomeSquadra IS NULL OR :nomeSquadra = '' OR LOWER(g.squadra.nome) LIKE LOWER(CONCAT('%', :nomeSquadra, '%')))")
     List<Giocatore> ricercaAvanzata(
             @Param("nome") String nome, 
             @Param("cognome") String cognome, 
             @Param("nomeSquadra") String nomeSquadra);
}
