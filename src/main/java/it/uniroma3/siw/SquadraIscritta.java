package it.uniroma3.siw;

import java.util.Objects;

import jakarta.persistence.*;

@Entity
@Table(
    name = "SquadraIscritta",
    uniqueConstraints = {
        @UniqueConstraint(columnNames = {"torneo_id", "squadra_id"})
    }
)
public class  SquadraIscritta {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "torneo_id", nullable = false)
    private Torneo torneo;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "squadra_id", nullable = false)
    private Squadra squadra;
    
    private int punti;
    private int giocate;
    private int vittorie;
    private int pareggi;
    private int sconfitte;
    
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public Torneo getTorneo() {
		return torneo;
	}
	public void setTorneo(Torneo torneo) {
		this.torneo = torneo;
	}
	public Squadra getSquadra() {
		return squadra;
	}
	public void setSquadra(Squadra squadra) {
		this.squadra = squadra;
	}
	public int getPunti() {
		return punti;
	}
	public void setPunti(int punti) {
		this.punti = punti;
	}
	public int getGiocate() {
		return giocate;
	}
	public void setGiocate(int giocate) {
		this.giocate = giocate;
	}
	public int getVittorie() {
		return vittorie;
	}
	public void setVittorie(int vittorie) {
		this.vittorie = vittorie;
	}
	public int getPareggi() {
		return pareggi;
	}
	public void setPareggi(int pareggi) {
		this.pareggi = pareggi;
	}
	public int getSconfitte() {
		return sconfitte;
	}
	public void setSconfitte(int sconfitte) {
		this.sconfitte = sconfitte;
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
		SquadraIscritta other = (SquadraIscritta) obj;
		return Objects.equals(id, other.id);
	}

    
}