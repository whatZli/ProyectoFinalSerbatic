package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Personas;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Home() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// Iniciar la sesión
		HttpSession session = request.getSession();
		Personas p = (Personas) session.getAttribute("usuario"); // Recuperar la persona en la sesión
		if (p != null) {
			if (p.getTipoPersona().equals("CN") || p.getTipoPersona().equals("CP")) {
				request.setAttribute("container", "./cliente/Home.jsp");
			} else if (p.getTipoPersona().equals("TC") || p.getTipoPersona().equals("TV")) {
				request.setAttribute("container", "./trabajador/Home.jsp");
			}
		} else {
			request.setAttribute("container", "comun/Home.jsp");
		}
		request.getRequestDispatcher("index.jsp").forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
