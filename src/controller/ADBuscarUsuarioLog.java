package controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelDAO.ClienteDAO;
import modelDAO.LoggerDAO;

/**
 * Servlet implementation class ADBuscarUsuarioLog
 */
@WebServlet("/ADBuscarUsuarioLog")
public class ADBuscarUsuarioLog extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ADBuscarUsuarioLog() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("personasClientes", ClienteDAO.devolverTodosLosClientes());

		request.setAttribute("container", "admin/BuscarLogUsuario.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String dni_cliente = request.getParameter("id_cliente");
		System.out.println("Se va a buscar el log del usuario ->" + dni_cliente );
		
		request.setAttribute("dni_cliente", dni_cliente);
		request.setAttribute("lineasLog", LoggerDAO.devolverLogUsuario(dni_cliente));

		request.setAttribute("container", "admin/VerLogUsuario.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
