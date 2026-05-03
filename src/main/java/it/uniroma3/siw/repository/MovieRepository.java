package it.uniroma3.siw.repository;

import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import it.uniroma3.siw.Movie;

public interface MovieRepository extends CrudRepository<Movie, Long> {
	public boolean existsByTitleAndYear(String title, Integer year);
	
	public boolean existsByTitleAndYearAndActors_Id(String title, Integer year, Long id);
	@Query("SELECT m FROM Movie m LEFT JOIN FETCH m.actors WHERE m.id = :id")
	Movie findByIdConAttori(@Param("id") Long id);
	
	@Modifying
	@Transactional
	@Query(value = "INSERT INTO movie_actors (starred_movie_id, actors_id) VALUES (:starred_movie_id, :actorId)", nativeQuery = true)
	void addActorToMovieSQL(@Param("starred_movie_id") Long movieId, @Param("actorId") Long actorId);
}