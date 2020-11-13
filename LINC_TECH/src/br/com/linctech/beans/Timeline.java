package br.com.linctech.beans;

import java.time.LocalDate;

public class Timeline {
	private String acontecimentos;
	private LocalDate data;
	private String descricao;
	private int ano;
	private Personagem personagem;
	
	
	public Timeline() {
		super();
	}
	
	
	public Timeline(String acontecimentos, LocalDate data, String descricao, int ano, Personagem personagem) {
		super();
		this.acontecimentos = acontecimentos;
		this.data = data;
		this.descricao = descricao;
		this.ano = ano;
		this.personagem = personagem;
		
	}
	
	public String getDescricao() {
		return descricao;
	}


	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}


	public int getAno() {
		return ano;
	}


	public void setAno(int ano) {
		this.ano = ano;
	}


	public String getAcontecimentos() {
		return acontecimentos;
	}
	public void setAcontecimentos(String acontecimentos) {
		this.acontecimentos = acontecimentos;
	}

	public LocalDate getData() {
		return data;
	}
	public void setData(LocalDate data) {
		this.data = data;
	}
	public Personagem getPersonagem() {
		return personagem;
	}
	public void setPersonagem(Personagem personagem) {
		this.personagem = personagem;
	}
	
}
