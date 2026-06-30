package it.uniroma3.siw.dto;


public class ClassificaDTO {
	private Long id;
    private String nome;
    private String logo;
    private int punti;
    private int giocate;
    private int vittorie; 
    private int pareggi;
    private int sconfitte;

    
    public ClassificaDTO(Long id, String nome, String logo, int punti, 
    		int giocate, int vittorie, int pareggi, int sconfitte) {
        this.id = id;
        this.nome = nome;
        this.logo = logo;
        this.punti = punti;
        this.giocate = giocate;
        this.vittorie = vittorie;
        this.pareggi = pareggi;
        this.sconfitte = sconfitte;
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

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
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
}
