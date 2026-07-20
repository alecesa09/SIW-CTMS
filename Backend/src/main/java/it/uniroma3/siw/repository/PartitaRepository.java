package it.uniroma3.siw.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Giocatore;
import it.uniroma3.siw.Partita;
import it.uniroma3.siw.dto.PartitaDTO;

public interface PartitaRepository extends JpaRepository<Partita, Long>{
	
	// 1. Navigazione annidata nella clausola WHERE
		@Query("SELECT p FROM Partita p WHERE p.squadraCasa.squadra.id = :idSquadra OR p.squadraTrasferta.squadra.id = :idSquadra ORDER BY p.data ASC")
		public List<Partita> getCalendarioDiSquadraPerId(@Param("idSquadra") Long idSquadra);
		
		@EntityGraph(attributePaths = {
			    "squadraCasa.squadra", 
			    "squadraTrasferta.squadra"
			})
		
		List<Partita> findTop5BySquadraCasa_Squadra_IdAndStatoOrSquadraTrasferta_Squadra_IdAndStatoOrderByDataDesc(
			    Long idComeSquadraCasa, 
			    Partita.Stato statoComeCasa, 
			    Long idComeSquadraTrasferta, 
			    Partita.Stato statoComeTrasferta
			);
		
		List<Partita> findByData(LocalDate data);

		@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato, p.ora, t.id, t.nome, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) " +
			   "FROM Partita p " +
			   "JOIN p.squadraCasa sc " +
			   "JOIN sc.squadra c " +
			   "JOIN p.squadraTrasferta st " +
			   "JOIN st.squadra tr " +
			   "JOIN p.torneo t " +
			   "WHERE p.data = :date")  
		List<PartitaDTO> findPartiteOggi(@Param("date") LocalDate date);
		

		@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato, p.data, p.ora, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) " +
			   "FROM Partita p " +
			   "JOIN p.squadraCasa sc " +
			   "JOIN sc.squadra c " +
			   "JOIN p.squadraTrasferta st " +
			   "JOIN st.squadra tr " +
			   "JOIN p.torneo t " +
			   "WHERE t.id = :id")  
		List<PartitaDTO> findCalendario(@Param("id") Long id);
		
		@Query("SELECT p FROM Partita p " +
			   "LEFT JOIN FETCH p.squadraCasa sc " +
			   "LEFT JOIN FETCH sc.squadra " +
			   "LEFT JOIN FETCH p.squadraTrasferta st " +
			   "LEFT JOIN FETCH st.squadra " +
			   "LEFT JOIN FETCH p.arbitro " +
			   "WHERE p.id = :id")
		Optional<Partita> findByIdconTutto(@Param("id") Long id);

		@Query("SELECT p FROM Partita p " +
			   "LEFT JOIN FETCH p.squadraCasa sc " +
			   "LEFT JOIN FETCH sc.squadra " +
			   "LEFT JOIN FETCH p.squadraTrasferta st " +
			   "LEFT JOIN FETCH st.squadra")
		List<Partita> findallWithSquadre();
		
		@EntityGraph(attributePaths = {
			    "torneo", 
			    "squadraCasa.squadra", 
			    "squadraTrasferta.squadra"
			})
		@Query("SELECT p FROM Partita p WHERE " +
			       "(:nomeTorneo IS NULL OR :nomeTorneo = '' OR LOWER(p.torneo.nome) LIKE LOWER(CONCAT('%', :nomeTorneo, '%'))) AND " +
			       "(:annoTorneo IS NULL OR p.torneo.anno = :annoTorneo) AND " +
			       "(:nomeSquadra IS NULL OR :nomeSquadra = '' OR LOWER(p.squadraCasa.squadra.nome) LIKE LOWER(CONCAT('%', :nomeSquadra, '%')) OR LOWER(p.squadraTrasferta.squadra.nome) LIKE LOWER(CONCAT('%', :nomeSquadra, '%')))")
		List<Partita> ricercaAvanzata(
		        @Param("nomeTorneo") String nomeTorneo, 
		        @Param("annoTorneo") Integer annoTorneo, 
		        @Param("nomeSquadra") String nomeSquadra);

		
}
