package it.uniroma3.siw.service;

import java.util.List;
import java.util.Optional;


import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import it.uniroma3.siw.Artist;
import it.uniroma3.siw.repository.ArtistRepository;


@Service
public class ArtistService {
	private ArtistRepository artistRepository;
	public ArtistService(ArtistRepository artistRepository) {
		this.artistRepository = artistRepository;
	}
	
	@Transactional(readOnly = true)
	public Artist findById(long id){
		Artist artist = this.artistRepository.findById(id).get();
		return artist;
	}
	
	public List<Artist> findAll(){
		List<Artist> artist = (List<Artist>) this.artistRepository.findAll();
		return artist;
	}

}
