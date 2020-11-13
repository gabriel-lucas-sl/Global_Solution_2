package br.com.linctech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import br.com.linctech.beans.Personagem;
import br.com.linctech.conexao.Conexao;

public class PersonagemDAO {
	
	private Connection conect;
	private ResultSet result;
	private PreparedStatement state;
	
	public PersonagemDAO() throws Exception {
		conect = Conexao.conexaoBanco();
	}
	
	public void FecharBanco() throws Exception {
		conect.close();
	}
	
	public Personagem infoPersonagem(int id ) throws Exception {
		state = conect.prepareStatement("SELECT * FROM PERSONAGEM INNER JOIN PERSONAGEM_TIMELINE WHERE PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM WHERE ID_PERSONAGEM = ?");
		state.setInt(1, id);
		result = state.executeQuery();
		while(result.next()) {
			return new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"), result.getString("DESCRICAO"),
					result.getString("PAPEL"), result.getInt("IDADE"));
		}
		return new Personagem();
	}
}
