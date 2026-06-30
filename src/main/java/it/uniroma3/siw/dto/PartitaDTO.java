package it.uniroma3.siw.dto;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.Objects;

import it.uniroma3.siw.Partita;

public class PartitaDTO {
    private Long id;
    private Partita.Stato stato;
    private Long torneoId;
    private String nomeTorneo;
    private String nomeSquadraCasa;
    private String logoSquadraCasa;
    private String nomeSquadraTrasferta;
    private String logoSquadraTrasferta;
    private LocalDate data;
    private LocalTime ora;
    private int golCasa;
    private int golTrasferta;
    
	public PartitaDTO(Long id, Partita.Stato stato,LocalTime ora,Long torneoId, String nomeTorneo, String nomeSquadraCasa, String logoSquadraCasa, String nomeSquadraTrasferta, String logoSquadraTrasferta, int golCasa, int golTrasferta) {
		this.id = id;
		this.stato = stato;
		this.torneoId =torneoId;
		this.nomeTorneo = nomeTorneo;
		this.nomeSquadraCasa = nomeSquadraCasa;
		this.logoSquadraCasa = logoSquadraCasa;
		this.nomeSquadraTrasferta = nomeSquadraTrasferta;
		this.logoSquadraTrasferta = logoSquadraTrasferta;
		this.golCasa = golCasa;
		this.golTrasferta = golTrasferta;
		this.ora=ora;
	}
	
	public PartitaDTO(Long id, Partita.Stato stato,LocalDate data,LocalTime ora, String nomeSquadraCasa, String logoSquadraCasa, String nomeSquadraTrasferta, String logoSquadraTrasferta, int golCasa, int golTrasferta) {
		this.id = id;
		this.stato = stato;
		this.nomeSquadraCasa = nomeSquadraCasa;
		this.logoSquadraCasa = logoSquadraCasa;
		this.nomeSquadraTrasferta = nomeSquadraTrasferta;
		this.logoSquadraTrasferta = logoSquadraTrasferta;
		this.golCasa = golCasa;
		this.golTrasferta = golTrasferta;
		this.ora=ora;
		this.data=data;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}

	
	public String getNomeTorneo() {
		return nomeTorneo;
	}
	public void setNomeTorneo(String nomeTorneo) {
		this.nomeTorneo = nomeTorneo;
	}
	public String getNomeSquadraCasa() {
		return nomeSquadraCasa;
	}
	public void setNomeSquadraCasa(String nomeSquadraCasa) {
		this.nomeSquadraCasa = nomeSquadraCasa;
	}
	public String getLogoSquadraCasa() {
		return logoSquadraCasa;
	}
	public void setLogoSquadraCasa(String logoSquadraCasa) {
		this.logoSquadraCasa = logoSquadraCasa;
	}
	public String getNomeSquadraTrasferta() {
		return nomeSquadraTrasferta;
	}
	public void setNomeSquadraTrasferta(String nomeSquadraTrasferta) {
		this.nomeSquadraTrasferta = nomeSquadraTrasferta;
	}
	public String getLogoSquadraTrasferta() {
		return logoSquadraTrasferta;
	}
	public void setLogoSquadraTrasferta(String logoSquadraTrasferta) {
		this.logoSquadraTrasferta = logoSquadraTrasferta;
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
		PartitaDTO other = (PartitaDTO) obj;
		return Objects.equals(id, other.id);
	}
	public Partita.Stato getStato() {
		return stato;
	}
	public void setStato(Partita.Stato stato) {
		this.stato = stato;
	}
	public void setGolCasa(int golCasa) {
		this.golCasa = golCasa;
	}
	public void setGolTrasferta(int golTrasferta) {
		this.golTrasferta = golTrasferta;
	}
	public Long getTorneoId() {
		return torneoId;
	}
	public void setTorneoId(Long torneoId) {
		this.torneoId = torneoId;
	}
	public LocalTime getOra() {
		return ora;
	}
	public void setOra(LocalTime ora) {
		this.ora = ora;
	}

	public LocalDate getData() {
		return data;
	}

	public void setData(LocalDate data) {
		this.data = data;
	}

    
}
