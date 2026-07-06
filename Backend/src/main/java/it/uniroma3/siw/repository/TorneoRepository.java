package it.uniroma3.siw.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Torneo;
import it.uniroma3.siw.dto.TorneoDTO;

public interface TorneoRepository extends CrudRepository<Torneo, Long>{
	@Query("SELECT t FROM Torneo t LEFT JOIN FETCH t.iscrizioni i LEFT JOIN FETCH i.squadra WHERE t.id = :id")
	Torneo findByIdWithSquadre(@Param("id") Long id);
	
	@Query("SELECT t FROM Torneo t JOIN FETCH t.iscrizioni WHERE t.id = :id")
	Torneo findByIdWithIscrizioni(Long id);
	
	public List<Torneo> findTop5ByNomeContainingIgnoreCase(String parziale);
	
	@Query("SELECT new it.uniroma3.siw.dto.TorneoDTO(t.id,t.nome,t.anno)FROM Torneo t")
	public List<TorneoDTO> FindInfoTornei();	
	
	@Query("SELECT t.id FROM Torneo t JOIN t.iscrizioni i WHERE i.squadra.id = :id")
	List<Long> findIdtorneiBySquadra(@Param("id") Long id);
	
	@Query("SELECT t FROM Torneo t JOIN t.iscrizioni i WHERE i.id = :id")
	Optional<Torneo> findtorneiBySquadraIscrittaId(@Param("id") Long id);
    
    
}
