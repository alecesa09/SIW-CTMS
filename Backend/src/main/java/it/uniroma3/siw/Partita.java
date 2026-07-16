package it.uniroma3.siw;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;
import java.util.Objects;

import com.fasterxml.jackson.annotation.JsonIdentityInfo;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;

import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToMany;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
import jakarta.validation.constraints.NotBlank;


@JsonIdentityInfo(
		generator=ObjectIdGenerators.PropertyGenerator.class,
		property="id"
		)
@Entity
public class Partita {
	
	public Partita() {
		this.golCasa = 0;
		this.golTrasferta = 0;
	}
	
	public enum Stato {
        PROGRAMMATA, IN_CORSO, TERMINATA, ANNULLATA, IN_SOSPESO
    }
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;
	
	private LocalDate data;
	private String luogo;
	private Integer golCasa;
	private Integer golTrasferta;
	private LocalTime ora;
	
	@Enumerated(EnumType.STRING)
	private Stato stato;
	
	@OneToMany(mappedBy = "partita")
	private List<Commento> commenti;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="squadraCasaId")
	private SquadraIscritta squadraCasa;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="squadraTrasfertaId")
	private SquadraIscritta squadraTrasferta;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="arbitroId")
	private Arbitro arbitro;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="torneoId")
	private Torneo torneo;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate date) {
		this.data = date;
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
	public SquadraIscritta getSquadraCasa() {
		return squadraCasa;
	}
	public void setSquadraCasa(SquadraIscritta squadraCasa) {
		this.squadraCasa = squadraCasa;
	}
	public SquadraIscritta getSquadraTrasferta() {
		return squadraTrasferta;
	}
	public void setSquadraTrasferta(SquadraIscritta squadraTrasferta) {
		this.squadraTrasferta = squadraTrasferta;
	}
	public Arbitro getArbitro() {
		return arbitro;
	}
	public void setArbitro(Arbitro arbitro) {
		this.arbitro = arbitro;
	}
	public Torneo getTorneo() {
		return torneo;
	}
	public void setTorneo(Torneo torneo) {
		this.torneo = torneo;
	}
	public LocalTime getOra() {
		return ora;
	}
	public void setOra(LocalTime ora) {
		this.ora = ora;
	}
	
}
