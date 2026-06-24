package it.uniroma3.siw.repository;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;

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
	
	List<Partita> findByData(LocalDate data);
	
	@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato, p.ora, t.id, t.nome, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) FROM Partita p JOIN p.squadraCasa c JOIN p.squadraTrasferta tr JOIN p.torneo t WHERE p.data = :date")  
		List<PartitaDTO> findPartiteOggi(@Param("date") LocalDate date);
	
}
