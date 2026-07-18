package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import it.uniroma3.siw.Squadra;


import java.util.List;

public interface SquadraRepository extends JpaRepository<Squadra, Long> {
    
    public List<Squadra> findTop5ByNomeContainingIgnoreCase(String parziale);
    
    List<Squadra> findByNomeContainingIgnoreCase(String nome);
    
}
