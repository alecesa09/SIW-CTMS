package it.uniroma3.siw.repository;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

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
		//è per entità annidate
		List<Partita> findTop5BySquadraCasa_Squadra_IdAndStatoOrSquadraTrasferta_Squadra_IdAndStatoOrderByDataDesc(
			    Long idComeSquadraCasa, 
			    Partita.Stato statoComeCasa, 
			    Long idComeSquadraTrasferta, 
			    Partita.Stato statoComeTrasferta
			);
		
		// 3. Rimane invariata, la data appartiene direttamente a Partita
		List<Partita> findByData(LocalDate data);
		
		// 4. JOIN a cascata: da Partita a SquadraIscritta (alias sc/st) e da lì a Squadra (alias c/tr)
		@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato, p.ora, t.id, t.nome, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) " +
			   "FROM Partita p " +
			   "JOIN p.squadraCasa sc " +
			   "JOIN sc.squadra c " +
			   "JOIN p.squadraTrasferta st " +
			   "JOIN st.squadra tr " +
			   "JOIN p.torneo t " +
			   "WHERE p.data = :date")  
		List<PartitaDTO> findPartiteOggi(@Param("date") LocalDate date);
		
		// 5. Stesso principio dei JOIN a cascata
		@Query("SELECT new it.uniroma3.siw.dto.PartitaDTO(p.id, p.stato, p.data, p.ora, c.nome, c.logo, tr.nome, tr.logo, p.golCasa, p.golTrasferta) " +
			   "FROM Partita p " +
			   "JOIN p.squadraCasa sc " +
			   "JOIN sc.squadra c " +
			   "JOIN p.squadraTrasferta st " +
			   "JOIN st.squadra tr " +
			   "JOIN p.torneo t " +
			   "WHERE t.id = :id")  
		List<PartitaDTO> findCalendario(@Param("id") Long id);
		
		// 6. FETCH JOIN: per evitare il problema N+1 devi "fetchare" sia l'iscrizione sia la squadra sottostante in un colpo solo
		@Query("SELECT p FROM Partita p " +
			   "LEFT JOIN FETCH p.squadraCasa sc " +
			   "LEFT JOIN FETCH sc.squadra " +
			   "LEFT JOIN FETCH p.squadraTrasferta st " +
			   "LEFT JOIN FETCH st.squadra " +
			   "LEFT JOIN FETCH p.arbitro " +
			   "WHERE p.id = :id")
		Optional<Partita> findByIdconTutto(@Param("id") Long id);
		
		// 7. Stesso principio del fetch completo applicato alla lista
		@Query("SELECT p FROM Partita p " +
			   "LEFT JOIN FETCH p.squadraCasa sc " +
			   "LEFT JOIN FETCH sc.squadra " +
			   "LEFT JOIN FETCH p.squadraTrasferta st " +
			   "LEFT JOIN FETCH st.squadra")
		List<Partita> findallWithSquadre();
}
