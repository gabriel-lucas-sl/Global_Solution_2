package br.com.linctech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.linctech.beans.Personagem;
import br.com.linctech.beans.Timeline;
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

	public List<Personagem> selecionarPersonagem() throws Exception {
		List<Personagem> lista = new ArrayList<Personagem>();
		state = conect.prepareStatement(
				"SELECT DISTINCT PERSONAGEM.ID_PERSONAGEM,PERSONAGEM.NOME,PERSONAGEM_TIMELINE.IDADE, PERSONAGEM.DESCRICAO, PERSONAGEM.PAPEL  FROM PERSONAGEM INNER JOIN PERSONAGEM_TIMELINE ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT(YEAR FROM TIMELINE.DT_TIMELINE) = '1985'");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
					result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE")));
		}
		return lista;
	}

}
