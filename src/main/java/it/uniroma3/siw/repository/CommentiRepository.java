package it.uniroma3.siw.repository;

import java.util.List;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.siw.Commento;

public interface CommentiRepository extends JpaRepository<Commento, Long>{
	@EntityGraph(attributePaths = {"utente"})
	public List<Commento> findByPartitaId(Long id);
}
