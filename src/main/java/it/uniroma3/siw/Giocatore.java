package it.uniroma3.siw;

import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;
import java.time.LocalDate;

import it.uniroma3.siw.validation.NotFutureYear;


@Entity
public class Giocatore {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    @NotBlank
    private String nome;
    @NotBlank
    private String cognome;

    @ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="squadra_id")
    private Squadra squadra;
    
    
    @NotFutureYear
    private LocalDate nascita;
    @NotBlank
    private String nazionalita;
    
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }
    public LocalDate getNascita() {
        return nascita;
    }
    
    public void setNascita(LocalDate date) {
        this.nascita=date;
    }
    public Squadra getSquadra() {
        return squadra;
    }
    
    public void setSquadra(Squadra squadra) {
        this.squadra=squadra;
    }

	public String getNazionalita() {
		return nazionalita;
	}

	public void setNazionalita(String nazionalità) {
		this.nazionalita = nazionalità;
	}
    
    
}
