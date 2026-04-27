package it.uniroma3.siw.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import it.uniroma3.siw.Movie;
import it.uniroma3.siw.repository.MovieRepository;

import org.springframework.beans.factory.annotation.Autowired;
@Service
public class MovieService {

	@Autowired MovieRepository movieRepository;

    public MovieService(MovieRepository movieRepository) {
        this.movieRepository = movieRepository;
    }

    public Optional<Movie> findById(Long id) {
		return movieRepository.findById(id);
	}


    public List<Movie> findAll() {
        return (List<Movie>) movieRepository.findAll();
    }
    
    public void save(Movie movie){
    	movieRepository.save(movie);
    }
    
    public boolean alreadyExists(Movie movie){
    	return movieRepository.existsByTitleAndYear(movie.getTitle(), movie.getYear());
    }
    
    public long count() {
    	return movieRepository.count();
    }
}
