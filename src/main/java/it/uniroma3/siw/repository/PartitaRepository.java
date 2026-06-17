package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Partita;

public interface PartitaRepository extends JpaRepository<Partita, Long>{
	
	@EntityGraph(attributePaths = {"squadraCasa", "squadraTrasferta", "arbitro"})
	public List<Partita> findByTorneoIdOrderByDataAsc(Long id);
	@Query("SELECT p FROM Partita p WHERE p.squadraCasa.id = :idSquadra OR p.squadraTrasferta.id = :idSquadra ORDER BY p.data ASC")
	public List<Partita> getCalendarioDiSquadraPerId(@Param("idSquadra") Long idSquadra);
	
	List<Partita> findTop5BySquadraCasaIdAndStatoOrSquadraTrasfertaIdAndStatoOrderByDataDesc(
		    Long idComeSquadraCasa, 
		    Partita.Stato statoComeCasa, 
		    Long idComeSquadraTrasferta, 
		    Partita.Stato statoComeTrasferta
		);

}
