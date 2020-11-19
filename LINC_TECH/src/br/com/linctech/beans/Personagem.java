package br.com.linctech.beans;

public class Personagem {

	private int id;
	private String nome;
	private String descricao;
	private String papelNoFilme;
	private int idade;
	private String img;

	public Personagem(int id, String nome, String descricao, String papelNoFilme, int idade) {
		super();
		this.nome = nome;
		this.descricao = descricao;
		this.papelNoFilme = papelNoFilme;
		this.idade = idade;
	}

	public Personagem(int id, String nome, String descricao, String papelNoFilme, int idade, String img) {
		super();
		this.id = id;
		this.nome = nome;
		this.descricao = descricao;
		this.papelNoFilme = papelNoFilme;
		this.idade = idade;
		this.img = img;
	}

	public Personagem() {
		super();
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
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
