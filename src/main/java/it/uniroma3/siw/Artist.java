package it.uniroma3.siw;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Artist {

	public Artist() {
		// TODO Auto-generated constructor stub
	}
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@NotBlank
	private String name;
	
	private LocalDate date;
	
	private String placeOfBirth;
	
	@OneToMany(mappedBy = "director")
	private List<Movie> directedMovie;
	
	@ManyToMany(mappedBy = "actors")
	private List<Movie>  starredMovie;
	
	
	

	public List<Movie> getDirectedMovie() {
		return directedMovie;
	}

	public void setDirectedMovie(List<Movie> directedMovie) {
		this.directedMovie = directedMovie;
	}

	public List<Movie> getStarredMovie() {
		return starredMovie;
	}

	public void setStarredMovie(List<Movie> starredMovie) {
		this.starredMovie = starredMovie;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getDate() {
		return date;
	}

	public void setDate(LocalDate date) {
		this.date = date;
	}

	public String getPlaceOfBirth() {
		return placeOfBirth;
	}

	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Artist other = (Artist) obj;
		return id == other.id;
	}
	
	
	
	

}
