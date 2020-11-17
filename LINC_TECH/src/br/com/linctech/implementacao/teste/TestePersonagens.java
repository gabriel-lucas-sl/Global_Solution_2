package br.com.linctech.implementacao.teste;

import java.util.List;

import br.com.linctech.beans.Personagem;
import br.com.linctech.dao.PersonagemDAO;

public class TestePersonagens {
	public static void main(String[] args) throws Exception {
		PersonagemDAO dao = new PersonagemDAO();
		List<Personagem> personagem = dao.selecionarPersonagem();
		for (Personagem persi : personagem) {
			System.out.println("NOME:      " + persi.getNome());
			System.out.println("DESCRIÇÃO: " + persi.getDescricao());
			System.out.println("PAPEL:     " + persi.getPapelNoFilme());
			System.out.println("IDADE:     " + persi.getIdade());
			System.out.println();
		}
	}
}
