package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import it.uniroma3.siw.Squadra;
import it.uniroma3.siw.dto.ClassificaDTO;

import java.util.List;

public interface SquadraRepository extends JpaRepository<Squadra, Long> {
    
    public List<Squadra> findTop5ByNomeContainingIgnoreCase(String parziale);
    
    
    
}
