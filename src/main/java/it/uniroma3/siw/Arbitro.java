package it.uniroma3.siw;

import java.time.LocalDate;
import java.util.Objects;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
@Entity
public class Arbitro {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	@NotBlank
	private String nome;
	@NotBlank
	private String cognome;
	@NotNull
	private Long codiceArbitrale;
	@NotNull
	private LocalDate nascita;
	@NotBlank
	private String nazionalita;
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
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
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
		Arbitro other = (Arbitro) obj;
		return id == other.id;
	}
	public LocalDate getNascita() {
		return nascita;
	}
	public void setNascita(LocalDate nascita) {
		this.nascita = nascita;
	}
	public String getNazionalita() {
		return nazionalita;
	}
	public void setNazionalita(String nazionalita) {
		this.nazionalita = nazionalita;
	}
	public Long getCodiceArbitrale() {
		return codiceArbitrale;
	}
	public void setCodiceArbitrale(Long codiceArbitrale) {
		this.codiceArbitrale = codiceArbitrale;
	}
	
	/*
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (1, '2026-06-01', '20:45:00', 'Stadio Olimpico', 2, 1, 'TERMINATA', 1, 2, 1, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (2, '2026-06-05', '20:45:00', 'Campo Flaminio', 0, 3, 'TERMINATA', 3, 4, 2, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (3, '2026-06-27', '20:45:00', 'Stadio dei Marmi', 1, 1, 'TERMINATA', 5, 1, 1, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (4, '2026-06-10', '20:45:00', 'Stadio Olimpico', 3, 1, 'TERMINATA', 6, 7, 1, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (5, '2026-06-12', '20:45:00', 'Artemio Franchi', 2, 2, 'TERMINATA', 8, 9, 2, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (6, '2026-06-27', '15:00:00', 'Dall Ara', 1, 0, 'TERMINATA', 10, 11, 1, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (7, '2026-06-27', '15:00:00', 'Marassi', 0, 1, 'ANNULLATA', 12, 13, 2, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (8, '2026-06-27', '15:00:00', 'Bentegodi', 2, 3, 'IN_SOSPESO', 14, 15, 1, 1);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (9, '2026-09-01', '20:45:00', 'San Siro', 2, 2, 'PROGRAMMATA', 16, 3, 3, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (10, '2026-09-05', '20:45:00', 'U-Power Stadium', 1, 0, 'TERMINATA', 17, 18, 4, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (11, '2026-09-10', '20:45:00', 'Castellani', 0, 3, 'TERMINATA', 19, 7, 3, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (12, '2026-09-12', '15:00:00', 'Stirpe', 1, 1, 'TERMINATA', 20, 21, 4, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (13, '2026-09-15', '20:45:00', 'Mapei Stadium', 2, 1, 'TERMINATA', 22, 6, 3, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (14, '2026-09-18', '20:45:00', 'Zini', 0, 0, 'PROGRAMMATA', 23, 16, 4, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (15, '2026-06-27', '18:00:00', 'Penzo', 0, 0, 'IN_CORSO', 24, 25, 3, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (16, '2026-06-27', '18:00:00', 'Olimpico', 0, 0, 'IN_CORSO', 5, 8, 4, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (17, '2026-06-27', '20:45:00', 'Maradona', 0, 0, 'PROGRAMMATA', 7, 4, 3, 2);
	INSERT INTO partita (id, data, ora, luogo, gol_casa, gol_trasferta, stato, squadra_casa_id, squadra_trasferta_id, arbitro_id, torneo_id) VALUES (18, '2026-09-30', '20:45:00', 'Allianz Stadium', 0, 0, 'PROGRAMMATA', 3, 1, 4, 2);
	*/
	
}
