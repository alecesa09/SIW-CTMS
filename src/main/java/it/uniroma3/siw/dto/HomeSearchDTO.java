package it.uniroma3.siw.dto;

public class HomeSearchDTO {
	private Long id;
	private String nome;
	private String cognome;
	private Tipo tipo;
	private String logo;

	enum Tipo{
		SQUADRA,
		GIOCATORE,
		TORNEO
	}

	public HomeSearchDTO(Long id, String nome) {
		this.id = id;
		this.nome = nome;
		this.tipo = Tipo.TORNEO;
	}
	
	public HomeSearchDTO(String logo,Long id,  String nome) {
		this.id = id;
		this.nome = nome;
		this.tipo = Tipo.SQUADRA;
		this.logo = logo;
	}
	
	public HomeSearchDTO(Long id, String nome, String cognome) {
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.tipo = Tipo.GIOCATORE;
	}

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

	public Tipo getTipo() {
		return tipo;
	}

	public void setTipo(Tipo tipo) {
		this.tipo = tipo;
	}

	public String getLogo() {
		return logo;
	}

	public void setLogo(String logo) {
		this.logo = logo;
	}
	
	@Override
	public String toString() {
	    return "HomeSearchDTO{" +
	            "id=" + id +
	            ", nome='" + nome + '\'' +
	            ", cognome='" + cognome + '\'' +
	            '}';
	}

}
