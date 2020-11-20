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
import br.com.linctech.beans.Timeline;
import br.com.linctech.dao.TimelineDAO;

/**
 * Servlet implementation class TimelineController
 */
@WebServlet(urlPatterns = { "/TimelineController", "/selecionarTimeline", "/selecionarPersonagem", "/fluxo" })
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
			case "/LINC_TECH/selecionarTimeline":
				selecionarTimeline(request, response, request.getParameter("ano"), request.getParameter("tempo"));
				break;
			
			case "/LINC_TECH/selecionarPersonagem":
				selecionarPersonagem(request, response, request.getParameter("ano"), request.getParameter("tempo"), Integer.parseInt(request.getParameter("id")));
				break;
			
			case "/LINC_TECH/fluxo":
				fluxo(request, response, request.getParameter("ano"), request.getParameter("tempo"), Integer.parseInt(request.getParameter("id")));
				break;

		default:
			break;
		}
	}
	
	protected void fluxo(HttpServletRequest request, HttpServletResponse response, String ano, String tempo, int id) throws ServletException, IOException {
		try {
			TimelineDAO dao = new TimelineDAO();
			List<Timeline> lista =  dao.selecTempo(ano, tempo);
			String nome = "", titulo = "", desc = "", img = "";
			int aux = 0;
			List<String> listaAux = new ArrayList<String>();
			for (int i = 0; i < lista.size(); i++) {
				Timeline p = lista.get(i);
				if (p.getPersonagem().getId() == id) {
					aux = i+1;
					nome = p.getPersonagem().getNome();
					titulo = p.getAcontecimentos();
					desc = p.getDescricao();
					img = p.getPersonagem().getImg();
					listaAux.add(desc);
				}
			}
			
			request.setAttribute("nome", nome);
			request.setAttribute("titulo", titulo);
			request.setAttribute("img", img);
			request.setAttribute("desc", desc);
			request.setAttribute("ano", ano);
			request.setAttribute("tempo", tempo);
			request.setAttribute("id", id);
			request.setAttribute("year", ano);
			
			request.getRequestDispatcher("jsp/personagem.jsp").forward(request, response);		
				
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
	
	protected void selecionarTimeline(HttpServletRequest request, HttpServletResponse response, String ano, String tempo) throws ServletException, IOException {
		try {
			TimelineDAO dao = new TimelineDAO();
			List<Timeline> lista =  dao.selecTempo(ano, tempo);
			String nome = "";
			for (Timeline p: lista) {
				nome = p.getPersonagem().getNome();
			}
			request.setAttribute("nome", nome);
			request.setAttribute("personagensPassado", lista);
			
			
			if (ano.equals("1955")) {
			
				request.getRequestDispatcher("jsp/ano1955.jsp").forward(request, response);		
			} else if (ano.equals("1985")){
				
				request.getRequestDispatcher("jsp/ano1985.jsp").forward(request, response);		
			} else if (ano.equals("2015")) {
				
				request.getRequestDispatcher("jsp/ano2015.jsp").forward(request, response);		
			}
				
			
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

	protected void selecionarPersonagem(HttpServletRequest request, HttpServletResponse response, String ano, String tempo, int id) throws ServletException, IOException {
		try {
			TimelineDAO dao = new TimelineDAO();
			List<Timeline> lista =  dao.selecTempo(ano, tempo);
			String nome = "", titulo = "", desc = "", img = "";
			int aux = 0;
			List<String> listaAux = new ArrayList<String>();
			for (int i = 0; i < lista.size(); i++) {
				Timeline p = lista.get(i);
				if (p.getPersonagem().getId() == id) {
					aux = i+1;
					nome = p.getPersonagem().getNome();
					titulo = p.getAcontecimentos();
					desc = p.getDescricao();
					img = p.getPersonagem().getImg();
					listaAux.add(desc);
				}
			}
			
			request.setAttribute("nome", nome);
			request.setAttribute("titulo", titulo);
			request.setAttribute("img", img);
			request.setAttribute("desc", desc);
			request.setAttribute("ano", ano);
			request.setAttribute("tempo", tempo);
			request.setAttribute("id", id);
			request.setAttribute("year", ano);
			System.out.println(ano);
			
			request.getRequestDispatcher("jsp/personagem.jsp").forward(request, response);		
				
			
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
		
}


