package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Giocatore;

public interface GiocatoreRepository extends JpaRepository<Giocatore, Long>{
	@Query("SELECT g.id, g.nome, g.cognome FROM Giocatore g WHERE g.squadra.id = :squadraId")
	public List<Object[]> findParametriBySquadraId(@Param("squadraId") Long squadraId);
}
