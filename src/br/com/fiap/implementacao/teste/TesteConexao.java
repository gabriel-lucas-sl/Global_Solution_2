package br.com.fiap.implementacao.teste;

import br.com.fiap.Exception.Excecao;
import br.com.fiap.dao.PersonagemDAO;

public class TesteConexao {
	
	public static void main(String[] args) {
		
		try {
			PersonagemDAO dao = new PersonagemDAO();
			System.out.println("Banco abrido");
			
			
			
			dao.FecharBanco();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(Excecao.tratarExcecoes(e));
		}
	}

}
