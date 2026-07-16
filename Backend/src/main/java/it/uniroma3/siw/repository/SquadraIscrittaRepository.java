package it.uniroma3.siw.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.SquadraIscritta;
import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.ClassificaDTO;

public interface SquadraIscrittaRepository extends JpaRepository<SquadraIscritta, Long>{
	
	@Query("SELECT new it.uniroma3.siw.dto.ClassificaDTO(s.id,s.nome,s.logo,si.punti,si.giocate,si.vittorie,si.pareggi,si.sconfitte) FROM SquadraIscritta si JOIN si.squadra s WHERE si.torneo.id = :torneoId ORDER BY si.punti DESC")
    List<ClassificaDTO> findSquadreRawByTorneoId(@Param("torneoId") Long torneoId);
	
	Optional<SquadraIscritta> findBySquadraAndTorneo(Squadra squadra, Torneo torneo);
	
	List<SquadraIscritta> findBySquadra(Squadra squadra);

	@EntityGraph(attributePaths = {"squadra"})
	List<SquadraIscritta> findByTorneo(Torneo torneo);
	
}
