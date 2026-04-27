package it.uniroma3.siw.repository;

import org.springframework.data.repository.CrudRepository;
import it.uniroma3.siw.Movie;

public interface MovieRepository extends CrudRepository<Movie, Long> {
	public boolean existsByTitleAndYear(String title, Integer year);
}
