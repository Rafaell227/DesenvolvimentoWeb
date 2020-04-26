package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Noticia;
import service.NoticiaService;

@WebServlet("/CadastrarNoticia.do")
public class CadastrarNoticiaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter saida = response.getWriter();
		
		int id = Integer.parseInt(request.getParameter("id"));
		String titulo = request.getParameter("titulo");
		String descricao = request.getParameter("descricao");
		String texto = request.getParameter("texto");
		
		Noticia noticia = new Noticia(id, descricao, titulo, texto);
		NoticiaService noticiaService = new NoticiaService();
		
		if(noticiaService.cadastrar(noticia)) {
			saida.println("<h2>Noticia Cadastrada !</h2>");
			saida.println("<a href='ListarNoticias.do'>Retornar</a>");
		}
		else {
			saida.println("<h2>Dados Invalidos !</h2>");
			saida.println("<a href='cadastrar.html'>Tentar novamente</a");
		}
	}

}
