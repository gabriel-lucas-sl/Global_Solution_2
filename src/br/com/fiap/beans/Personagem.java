package br.com.fiap.beans;

public class Personagem {
	
	private int id;
	private String nome;
	private String descricao;
	private String papelNoFilme;
	private int idade;
	
	public Personagem(int id ,String nome, String descricao, String papelNoFilme, int idade) {
		super();
		this.nome = nome;
		this.descricao = descricao;
		this.papelNoFilme = papelNoFilme;
		this.idade = idade;
	}
	public Personagem() {
		super();
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public String getPapelNoFilme() {
		return papelNoFilme;
	}
	public void setPapelNoFilme(String papelNoFilme) {
		this.papelNoFilme = papelNoFilme;
	}
	public int getIdade() {
		return idade;
	}
	public void setIdade(int idade) {
		this.idade = idade;
	}

	
}
