package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Squadra;

import java.util.List;

public interface SquadraRepository extends JpaRepository<Squadra, Long> {
	@Query("SELECT s.id, s.nome FROM SquadraIscritta si JOIN si.squadra s WHERE si.torneo.id = :torneoId")
    List<Object[]> findSquadreRawByTorneoId(@Param("torneoId") Long torneoId);
}
