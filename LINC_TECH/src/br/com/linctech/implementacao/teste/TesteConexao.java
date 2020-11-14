package br.com.linctech.implementacao.teste;

import br.com.linctech.Exception.Excecao;
import br.com.linctech.dao.PersonagemDAO;

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
