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

//	public List<Personagem> selecionarPersonagem() throws Exception {
//		List<Personagem> lista = new ArrayList<Personagem>();
//		state = conect.prepareStatement(
//				"SELECT DISTINCT PERSONAGEM.ID_PERSONAGEM,PERSONAGEM.NOME,PERSONAGEM_TIMELINE.IDADE, PERSONAGEM.DESCRICAO, PERSONAGEM.PAPEL  FROM PERSONAGEM INNER JOIN PERSONAGEM_TIMELINE ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT(YEAR FROM TIMELINE.DT_TIMELINE) = '1985'");
//		result = state.executeQuery();
//		while (result.next()) {
//			lista.add(new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
//					result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE")));
//		}
//		return lista;
//	}

	public List<Personagem> selecionarPersonagemPresente() throws Exception {
		List<Personagem> listaPresente = new ArrayList<Personagem>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.DT_TIMELINE,PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1985' AND TIMELINE.TEMPO = 'Original' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaPresente.add(new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
					result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
					result.getString("URL")));
		}
		return listaPresente;
	}

	public List<Personagem> selecionarPersonagemPassado() throws Exception {
		List<Personagem> listaPassado = new ArrayList<Personagem>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.DT_TIMELINE,PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1955' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaPassado.add(new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
					result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
					result.getString("URL")));
		}
		return listaPassado;
	}

	public List<Personagem> selecionarPersonagemFuturo() throws Exception {
		List<Personagem> listaFuturo = new ArrayList<Personagem>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.DT_TIMELINE,PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '2015' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaFuturo.add(new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
					result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
					result.getString("URL")));
		}
		return listaFuturo;
	}

}
