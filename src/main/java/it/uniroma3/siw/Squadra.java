package it.uniroma3.siw;

import java.util.List;
import java.util.Objects;
import java.util.Set;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
@Entity
public class Squadra {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	
	@NotBlank
	private String nome;
	
	@Min(1700)
	@Max(2100)
	private Integer anno;
	
	private String citta;
	
	private String logo;
	
	@OneToMany(mappedBy = "squadra")
    private Set<Giocatore> giocatori;
	
	@OneToMany(mappedBy="squadra")
	List<SquadraIscritta> classifica;
	
	@OneToMany(mappedBy="squadraCasa")
	List<Partita> partiteIncasa;
	
	@OneToMany(mappedBy="squadraTrasferta")
	List<Partita> partiteFuoriCasa;
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public Integer getAnno() {
		return anno;
	}

	public void setAnno(Integer anno) {
		this.anno = anno;
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

	public List<SquadraIscritta> getClassifica() {
		return classifica;
	}

	public void setClassifica(List<SquadraIscritta> classifica) {
		this.classifica = classifica;
	}

	public List<Partita> getPartiteIncasa() {
		return partiteIncasa;
	}

	public void setPartiteIncasa(List<Partita> partiteIncasa) {
		this.partiteIncasa = partiteIncasa;
	}

	public List<Partita> getPartiteFuoriCasa() {
		return partiteFuoriCasa;
	}

	public void setPartiteFuoriCasa(List<Partita> partiteFuoriCasa) {
		this.partiteFuoriCasa = partiteFuoriCasa;
	}
}
