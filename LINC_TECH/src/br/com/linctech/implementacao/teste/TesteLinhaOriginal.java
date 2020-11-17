package br.com.linctech.implementacao.teste;

import java.time.format.DateTimeFormatter;
import java.util.List;

import br.com.linctech.Exception.Excecao;
import br.com.linctech.beans.Futuro;
import br.com.linctech.beans.Passado;
import br.com.linctech.beans.Presente;
import br.com.linctech.dao.PersonagemDAO;
import br.com.linctech.dao.TimelineDAO;

public class TesteLinhaOriginal {

	public static void main(String[] args) {

		try {
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

			DateTimeFormatter data = DateTimeFormatter.ofPattern("dd/MMMM/yyyy");

			System.out.println("----------------FUTURO");
			List<Futuro> futuro = daoTime.selecFuturo();
			for (Futuro fut : futuro) {
				System.out.println("Nome:          " + fut.getPersonagem().getNome());
				System.out.println("Acontecimento: " + fut.getAcontecimentos());
				System.out.println("Data:          " + fut.getData().format(data));
				System.out.println();
			}

			System.out.println("----------------PRESENTE");
			List<Presente> presente = daoTime.selecPresente();
			for (Presente pres : presente) {
				System.out.println("Nome:          " + pres.getPersonagem().getNome());
				System.out.println("Acontecimento: " + pres.getAcontecimentos());
				System.out.println("Data:          " + pres.getData().format(data));
				System.out.println();
			}

			System.out.println("----------------PASSADO");
			List<Passado> passado = daoTime.selecPassado();
			for (Passado past : passado) {

				System.out.println("Nome:          " + past.getPersonagem().getNome());
				System.out.println("Acontecimento: " + past.getAcontecimentos());
				System.out.println("Data:          " + past.getData().format(data));
				System.out.println();
			}

			daoTime.FecharBanco();

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(Excecao.tratarExcecoes(e));
		}
	}

}
