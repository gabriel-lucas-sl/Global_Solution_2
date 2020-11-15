package br.com.linctech.Exception;

import java.sql.SQLException;

public class Excecao extends Exception{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public static String tratarExcecoes(Exception erro) {
		if(erro instanceof NullPointerException) {
			return "Objeto Nulo!!";
			
		} else if (erro instanceof NumberFormatException) {
			return "N�mero inv�lido digitado!";
			
		}else if (erro instanceof SQLException) {
			return "Erro no Banco de Dados FIAP verifique as tabelas....";
			
		}else if (erro instanceof ArithmeticException) {
			return "Opera��o invalida, verifique se n�o existe divis�o por 0.";
		}
		else {
			return "Exce��o deconhecida...talvez ela n�o foi tratada ainda.";
		}
	}
}
