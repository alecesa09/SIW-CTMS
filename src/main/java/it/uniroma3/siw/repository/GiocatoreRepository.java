package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.dto.GiocatoreDto;

public interface GiocatoreRepository extends JpaRepository<Giocatore, Long>{
    @Query("SELECT new it.uniroma3.siw.dto.GiocatoreDto(g.id, g.nome, g.cognome) FROM Giocatore g WHERE g.squadra.id = :squadraId")
    public List<GiocatoreDto> findParametriBySquadraId(@Param("squadraId") Long squadraId);
}
