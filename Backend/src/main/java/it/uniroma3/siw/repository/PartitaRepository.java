package it.uniroma3.siw.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;

public interface PartitaRepository extends JpaRepository<Partita, Long>{
	
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
	
	@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato,p.data, p.ora, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) FROM Partita p JOIN p.squadraCasa c JOIN p.squadraTrasferta tr JOIN p.torneo t WHERE t.id = :id")  
	List<PartitaDTO> findCalendario(@Param("id") Long id);
	
	@Query("SELECT p FROM Partita p LEFT JOIN FETCH p.squadraCasa LEFT JOIN FETCH p.squadraTrasferta LEFT JOIN FETCH p.arbitro  WHERE p.id = :id")
	Optional<Partita> findByIdconTutto(@Param("id") Long id);
	
	@Query("SELECT p FROM Partita p LEFT JOIN FETCH p.squadraCasa LEFT JOIN FETCH p.squadraTrasferta")
	List<Partita> findallWithSquadre();
	
	
}
