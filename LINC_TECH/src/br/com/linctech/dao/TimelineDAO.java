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

	public List<Timeline> selecTempo(String ano, String tempo) throws SQLException {
        List<Timeline> lista = new ArrayList<Timeline>();
        state = conect.prepareStatement(
                "SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO,TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = ? AND TIMELINE.TEMPO = ? ORDER BY PERSONAGEM.ID_PERSONAGEM ASC");
        state.setString(1, ano);
        state.setString(2, tempo);
        result = state.executeQuery();
        while (result.next()) {
            lista.add(new Presente(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
                    result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
                    new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
                            result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
                            result.getString("URL"))));
        }
        return lista;
    }

	public List<Presente> selecPresente() throws SQLException {
		List<Presente> lista = new ArrayList<Presente>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO,TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1985' AND TIMELINE.TEMPO = '1985A' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Presente(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
							result.getString("URL"))));
		}
		return lista;
	}

	public List<Presente> selecPresenteAlternativo() throws SQLException {
		List<Presente> listaPresenteAlternativo = new ArrayList<Presente>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO,TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1985' AND TIMELINE.TEMPO = '1985B' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaPresenteAlternativo
					.add(new Presente(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
							result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
							new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
									result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
									result.getString("URL"))));
		}
		return listaPresenteAlternativo;
	}

	public List<Presente> selecPresenteAlternativoAlterado() throws SQLException {
		List<Presente> listaPresenteAlternativoAlterado = new ArrayList<Presente>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO,TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1985' AND TIMELINE.TEMPO = '1985C' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaPresenteAlternativoAlterado
					.add(new Presente(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
							result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
							new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
									result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
									result.getString("URL"))));
		}
		return listaPresenteAlternativoAlterado;
	}

	public List<Passado> selecPassado() throws SQLException {
		List<Passado> lista = new ArrayList<Passado>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO, TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1955' AND TIMELINE.TEMPO = '1955B' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Passado(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
							result.getString("URL"))));
		}
		return lista;
	}

	public List<Passado> selecPassadoAlternativo() throws SQLException {
		List<Passado> listaPassadoAlternativo = new ArrayList<Passado>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.ACONTECIMENTO,TIMELINE.TEMPO,TIMELINE.DT_TIMELINE,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '1955' AND TIMELINE.TEMPO = '1955C' ORDER BY DT_TIMELINE ASC");
		result = state.executeQuery();
		while (result.next()) {
			listaPassadoAlternativo
					.add(new Passado(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
							result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
							new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
									result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
									result.getString("URL"))));
		}
		return listaPassadoAlternativo;
	}

	public List<Futuro> selecFuturo() throws SQLException {
		List<Futuro> lista = new ArrayList<Futuro>();
		state = conect.prepareStatement(
				"SELECT DISTINCT TIMELINE.DT_TIMELINE,TIMELINE.TEMPO,TIMELINE.ACONTECIMENTO,PERSONAGEM_TIMELINE.BREVE_DESCRICAO, PERSONAGEM.PAPEL, PERSONAGEM.NOME, PERSONAGEM.DESCRICAO, PERSONAGEM.ID_PERSONAGEM, PERSONAGEM_TIMELINE.IDADE, PERSONAGEM_IMAGEM.URL FROM TIMELINE INNER JOIN PERSONAGEM_TIMELINE ON TIMELINE.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE INNER JOIN PERSONAGEM ON PERSONAGEM.ID_PERSONAGEM = PERSONAGEM_TIMELINE.ID_PERSONAGEM  INNER JOIN PERSONAGEM_IMAGEM ON PERSONAGEM_IMAGEM.ID_TIMELINE = PERSONAGEM_TIMELINE.ID_TIMELINE WHERE EXTRACT (YEAR FROM DT_TIMELINE) = '2015' ORDER BY DT_TIMELINE ASC");

		result = state.executeQuery();
		while (result.next()) {
			lista.add(new Futuro(result.getString("ACONTECIMENTO"), result.getDate("DT_TIMELINE").toLocalDate(),
					result.getString("BREVE_DESCRICAO"), result.getString("TEMPO"),
					new Personagem(result.getInt("ID_PERSONAGEM"), result.getString("NOME"),
							result.getString("DESCRICAO"), result.getString("PAPEL"), result.getInt("IDADE"),
							result.getString("URL"))));
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
