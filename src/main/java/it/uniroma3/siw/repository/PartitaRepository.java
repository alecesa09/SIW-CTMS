package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Partita;

public interface PartitaRepository extends JpaRepository<Partita, Long>{
	
	public List<Partita> findByTorneoId(Long id);
	
	@Query("SELECT p FROM Partita p WHERE p.squadraCasa.id = :idSquadra OR p.squadraTrasferta.id = :idSquadra ORDER BY p.date ASC")
	public List<Partita> getCalendarioDiSquadraPerId(@Param("idSquadra") Long idSquadra);
}
