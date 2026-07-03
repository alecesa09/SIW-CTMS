package it.uniroma3.siw.dto;

public class TorneoDTO {
	private Long id;
	private String nome;
	private Integer anno;
	
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
	public Integer getAnno() {
		return anno;
	}
	public void setAnno(Integer anno) {
		this.anno = anno;
	}
	public TorneoDTO(Long id, String nome, Integer anno) {
		this.id = id;
		this.nome = nome;
		this.anno = anno;
	}
	
	
}
