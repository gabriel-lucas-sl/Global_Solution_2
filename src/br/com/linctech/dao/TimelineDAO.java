package br.com.linctech.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.linctech.beans.Futuro;
import br.com.linctech.beans.Passado;
import br.com.linctech.beans.Personagem;
import br.com.linctech.beans.Presente;
import br.com.linctech.beans.PresenteAlternativo;
import br.com.linctech.beans.Timeline;
import br.com.linctech.conexao.Conexao;

public class TimelineDAO {

	private Connection conect;
	private ResultSet result;
	private PreparedStatement state;

	public TimelineDAO() throws Exception {
		conect = Conexao.conexaoBanco();
	}

	public void FecharBanco() throws Exception {
		conect.close();
	}

	public List<Timeline> selecionarTempo() throws SQLException {
		List<Timeline> lista = new ArrayList<Timeline>();
		state = conect.prepareStatement("SELECT DISTINCT TIMELINE.DT_TIMELINE FROM TIMELINE ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Timeline(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"))));
		}
		return lista;
	}

	public List<Presente> selecPresente() throws SQLException {
		List<Presente> lista = new ArrayList<Presente>();
		state = conect.prepareStatement(
				"SELECT TIMELINE.DT_TIMELINE, TIMELINE.ACONTECIMENTO, TIMELINE.TEMPO,PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_TIMELINE.BREVE_DESCRICAO FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM  WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1985' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Presente(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"))));
		}
		return lista;
	}

	public List<Passado> selecPassado() throws SQLException {
		List<Passado> lista = new ArrayList<Passado>();
		state = conect.prepareStatement(
				"SELECT TIMELINE.DT_TIMELINE, TIMELINE.ACONTECIMENTO, TIMELINE.TEMPO, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_TIMELINE.BREVE_DESCRICAO FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1955' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Passado(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"))));
		}
		return lista;
	}

	public List<Futuro> selecFuturo() throws SQLException {
		List<Futuro> lista = new ArrayList<Futuro>();
		state = conect.prepareStatement(
				"SELECT TIMELINE.DT_TIMELINE, TIMELINE.ACONTECIMENTO, TIMELINE.TEMPO,PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_TIMELINE.BREVE_DESCRICAO FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '2015' ORDER BY DT_TIMELINE ASC");

		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Futuro(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"))));
		}
		return lista;
	}

//	public List<PresenteAlternativo> selecPresenteAlte(String tempo) throws SQLException { //alternativo
//	List<PresenteAlternativo> lista = new ArrayList<PresenteAlternativo>();
//	state = conect.prepareStatement("SELECT TIMELINE.DT_TIMELINE, TIMELINE.ACONTECIMENTO FROM TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = ? AND TEMPO = 'Alternativo' ORDER BY DT_TIMELINE ASC");
//	state.setString(1, tempo);
//	result = state.executeQuery();
//	while (result.next()) {
//		lista.add(new PresenteAlternativo(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),null, null, null));
//	}
//	
//	return lista;
//}
}
