package it.uniroma3.siw.controller.rest;

import java.util.List;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;
import it.uniroma3.siw.dto.HomeSearchDTO;
import it.uniroma3.siw.dto.PartitaDTO;
import it.uniroma3.siw.service.HomeService;
import it.uniroma3.siw.service.PartitaService;
@RestController
public class HomeRestController {
	private final PartitaService partitaService;
	private final HomeService hs;
	
	public HomeRestController(PartitaService partitaService,HomeService hs) {
		this.partitaService = partitaService; 
		this.hs=hs;
	}

	@GetMapping("/rest/partiteOggi")
	public List<PartitaDTO> start() {
		return partitaService.findPartiteOggi();
	}
	
	@GetMapping("/rest/search/{string}")
	public List<HomeSearchDTO> search(@PathVariable("string") String str){
		return hs.search(str);
	}
	
}
