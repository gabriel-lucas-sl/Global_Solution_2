package br.com.linctech.implementacao.teste;

import java.util.List;

import javax.swing.JOptionPane;

import br.com.linctech.Exception.Excecao;
import br.com.linctech.beans.Passado;
import br.com.linctech.beans.Presente;
import br.com.linctech.beans.Timeline;
import br.com.linctech.dao.PersonagemDAO;
import br.com.linctech.dao.TimelineDAO;

public class TesteLinhaOriginal {
	
	public static void main(String[] args) {
		
		try {
			PersonagemDAO dao = new PersonagemDAO();
			TimelineDAO daoTime = new TimelineDAO();
//			int id = Integer.parseInt(JOptionPane.showInputDialog("ID: "));
//			Personagem persi = dao.selecionarPersonagem(id);
//			System.out.println(persi.getDescricao());
//			System.out.println(persi.getNome());
//			System.out.println(persi.getPapelNoFilme());
//			System.out.println(persi.getIdade());
			
			
//			String tempos = JOptionPane.showInputDialog("TEMPO: ");
//			List<Timeline> todos = daoTime.selecionarTempo(tempos);
//			for (Timeline time: todos) {
//				System.out.println(time.getData());
//			}
//			
//			String data = JOptionPane.showInputDialog("ANO: ");
//			List<Presente> presente = daoTime.selecPresente(data);
//			for (Presente present : presente) {
//				System.out.println(present.getAcontecimentos());
//				System.out.println(present.getData());
//			}
			
			String data2 = JOptionPane.showInputDialog("ANO: ");
			List<Passado> passado = daoTime.selecPassado(data2);
			for (Passado past : passado) {
				System.out.println(past.getAcontecimentos());
				System.out.println(past.getData());
			}
			
			daoTime.FecharBanco();
			
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(Excecao.tratarExcecoes(e));
		}
	}

}
