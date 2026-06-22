package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Torneo;

public interface TorneoRepository extends CrudRepository<Torneo, Long>{
	@Query("SELECT t FROM Torneo t LEFT JOIN FETCH t.iscrizioni i LEFT JOIN FETCH i.squadra WHERE t.id = :id")
	Torneo findByIdWithSquadre(@Param("id") Long id);
	
	
}
