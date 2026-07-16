package it.uniroma3.siw;

import java.time.LocalDate;
import java.util.List;
import java.util.Objects;
import java.util.Set;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import it.uniroma3.siw.validation.NotFutureYear;
import jakarta.persistence.CascadeType;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.NotBlank;

@JsonIdentityInfo(
		  generator = ObjectIdGenerators.PropertyGenerator.class,
		  property = "id")
@Entity
public class Squadra {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	@NotBlank
	private String nome;
	
	@NotFutureYear
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate fondazione;
	
	private String citta;
	
	private String logo;
	
	@JsonIgnore
	@OneToMany(mappedBy = "squadra")
    private Set<Giocatore> giocatori;
	
	@JsonIgnore
	@OneToMany(mappedBy = "squadra", cascade = CascadeType.ALL, orphanRemoval = true)
	private List<SquadraIscritta> iscrizioni;
	
	
	public Long getId() {
		return id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCitta() {
		return citta;
	}

	public void setCitta(String citta) {
		this.citta = citta;
	}

    public Set<Giocatore> getGiocatori() {
        return giocatori;
    }

    public void setGiocatori(Set<Giocatore> giocatori) {
        this.giocatori = giocatori;
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
		Squadra other = (Squadra) obj;
		return id == other.id;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}

	public List<SquadraIscritta> getIscrizioni() {
		return iscrizioni;
	}

	public void setIscrizioni(List<SquadraIscritta> classifica) {
		this.iscrizioni = classifica;
	}

	public LocalDate getFondazione() {
		return fondazione;
	}

	public void setFondazione(LocalDate fondazione) {
		this.fondazione = fondazione;
	}

	public void setId(Long id) {
		this.id = id;
	}
}
