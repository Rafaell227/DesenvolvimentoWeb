package controller;

import java.io.IOException; 

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ManterAtributoController
 */
@WebServlet("/ManterAtributo.do")
public class ManterAtributoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManterAtributoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pReq = request.getParameter("req");
		String pSes = request.getParameter("ses");
		String pApp = request.getParameter("app");

		request.setAttribute("flu1", pReq); // Setando no escopo de requisição
		request.getSession().setAttribute("flu2", pSes); // Setando no escopo de sessão.
		getServletContext().setAttribute("flu3", pApp); // Setando no escopo de aplicação.

		RequestDispatcher view = request.getRequestDispatcher("listaAtributos.jsp");
		view.forward(request, response);
	}
}
