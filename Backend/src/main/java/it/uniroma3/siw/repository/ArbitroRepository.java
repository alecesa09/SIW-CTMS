package it.uniroma3.siw.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;

import it.uniroma3.siw.Arbitro;
;

public interface ArbitroRepository extends CrudRepository<Arbitro, Long>{
	
	public Optional<Arbitro>findById(Long id);
	
	List<Arbitro> findAll();
}
