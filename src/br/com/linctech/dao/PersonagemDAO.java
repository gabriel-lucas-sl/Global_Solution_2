package br.com.linctech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	
	public Personagem selecionarPersonagem(int id ) throws Exception {
		state = conect.prepareStatement(
			"SELECT PERSONAGEM.NOME,PERSONAGEM.ID_PERSONAGEM, PERSONAGEM.DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM_TIMELINE.IDADE  FROM PERSONAGEM INNER JOIN PERSONAGEM_TIMELINE ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM WHERE PERSONAGEM_TIMELINE.ID_PERSONAGEM = ?");
		state.setInt(1, id);
		result = state.executeQuery();
		while(result.next()) {
			return new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"), result.getString("DESCRICAO"),
					result.getString("PAPEL"), result.getInt("IDADE"));
		}
		return new Personagem();
	}
	
}
