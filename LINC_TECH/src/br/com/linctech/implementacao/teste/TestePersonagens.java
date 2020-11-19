package br.com.linctech.implementacao.teste;

import java.util.List;

import br.com.linctech.beans.Personagem;
import br.com.linctech.dao.PersonagemDAO;

public class TestePersonagens {
	public static void main(String[] args) throws Exception {
		PersonagemDAO dao = new PersonagemDAO();
		System.out.println("----------------PRESENTE----------------");
		List<Personagem> personagemPresente = dao.selecionarPersonagemPresente();
		for (Personagem persi : personagemPresente) {
			System.out.println("NOME:      " + persi.getNome());
			System.out.println("DESCRIÇÃO: " + persi.getDescricao());
			System.out.println("PAPEL:     " + persi.getPapelNoFilme());
			System.out.println("IDADE:     " + persi.getIdade());
			System.out.println("URL:       " + persi.getImg());
			System.out.println();
		}
		System.out.println("----------------PASSADO----------------");
		List<Personagem> personagemPassado = dao.selecionarPersonagemPassado();
		for (Personagem persi : personagemPassado) {
			System.out.println("NOME:      " + persi.getNome());
			System.out.println("DESCRIÇÃO: " + persi.getDescricao());
			System.out.println("PAPEL:     " + persi.getPapelNoFilme());
			System.out.println("IDADE:     " + persi.getIdade());
			System.out.println("URL:       " + persi.getImg());
			System.out.println();
		}
		System.out.println("----------------FUTURO----------------");
		List<Personagem> personagemFuturo = dao.selecionarPersonagemFuturo();
		for (Personagem persi : personagemFuturo) {
			System.out.println("NOME:      " + persi.getNome());
			System.out.println("DESCRIÇÃO: " + persi.getDescricao());
			System.out.println("PAPEL:     " + persi.getPapelNoFilme());
			System.out.println("IDADE:     " + persi.getIdade());
			System.out.println("URL:       " + persi.getImg());
			System.out.println();
		}

		dao.FecharBanco();
	}
}
