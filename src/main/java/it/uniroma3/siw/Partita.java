package it.uniroma3.siw;
import java.time.LocalDate;
import java.util.List;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.NotBlank;

@Entity
public class Partita {
	
	public Partita() {
		super();
		this.golCasa = 0;
		this.golTrasferta = 0;
	}
	
	public enum Stato {
        PROGRAMMATA, IN_CORSO, TERMINATA, ANNULLATA, IN_SOSPESO
    }
	
	

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@NotBlank
	private LocalDate date;
	private String luogo; //che vuol di?
	private Integer golCasa;
	private Integer golTrasferta;
	@NotBlank
	@Enumerated(EnumType.STRING)
	private Stato stato;
	
	@OneToMany(mappedBy = "partita")
	private List<Commento> commenti;
	
	@OneToOne
	private Squadra squadraCasa;
	
	@OneToOne
	private Squadra squadraTrasferta;
	
	@ManyToOne
	@JoinColumn(name="arbitro")
	private Arbitro arbitro;
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	public String getLuogo() {
		return luogo;
	}
	public void setLuogo(String luogo) {
		this.luogo = luogo;
	}
	public Integer getGolCasa() {
		return golCasa;
	}
	public void setGolCasa(Integer golCasa) {
		this.golCasa = golCasa;
	}
	public Integer getGolTrasferta() {
		return golTrasferta;
	}
	public void setGolTrasferta(Integer golTrasferta) {
		this.golTrasferta = golTrasferta;
	}
	public Stato getStato() {
		return stato;
	}
	public void setStato(Stato stato) {
		this.stato = stato;
	}
	
	public List<Commento> getCommenti() {
		return commenti;
	}

	public void setCommenti(List<Commento> commenti) {
		this.commenti = commenti;
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
		Partita other = (Partita) obj;
		return id == other.id;
	}
	
}
