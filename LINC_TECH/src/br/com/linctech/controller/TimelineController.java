package br.com.linctech.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.linctech.Exception.Excecao;
import br.com.linctech.beans.Passado;
import br.com.linctech.dao.TimelineDAO;

/**
 * Servlet implementation class TimelineController
 */
@WebServlet(urlPatterns = { "/TimelineController", "/selecionarTimelinePassado", "/selecionarPersonagem" })
public class TimelineController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TimelineController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		switch (request.getRequestURI()) {
			case "/LINC_TECH/selecionarTimelinePassado":
				selecionarTimelinePassado(request, response);
				break;
			
			case "/LINC_TECH/jsp/selecionarPersonagem":
				selecionarPersonagem(request, response);
				break;

		default:
			break;
		}
	}
	
	protected void selecionarTimelinePassado(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			System.out.println("Entrei Try");
			TimelineDAO dao = new TimelineDAO();
			List<Passado> lista =  dao.selecPassado();
			String nome = "";
			for (Passado p: lista) {
				nome = p.getPersonagem().getNome();
				System.out.println("Nome:" + p.getPersonagem().getNome() +p.getPersonagem().getImg());
			}
			request.setAttribute("nome", nome);
			request.setAttribute("personagensPassado", lista);
			System.out.println("Fazendo request");
			request.getRequestDispatcher("jsp/ano1955.jsp").forward(request, response);			
			
		} catch (Exception e) {
			e.printStackTrace();
			Excecao.tratarExcecoes(e);
		} finally {
			try {
				TimelineDAO dao = new TimelineDAO();
				dao.FecharBanco();
			} catch (Exception e) {
				e.printStackTrace();
				Excecao.tratarExcecoes(e);
			}
		}
		
	}

	protected void selecionarPersonagem(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	}
	
}
