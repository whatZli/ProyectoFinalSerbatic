package controller;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.Calendar;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import model.Personas;
import modelDAO.LoginDAO;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LogIn")
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LogIn() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("container", "cliente/LogIn.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Se ha recibido una petición Post al Login");

		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");

		System.out.println("Logueando -> " + usuario + "---" + password);

		Personas p = LoginDAO.comprobarUsuarioCliente(usuario, password);

		if (p != null) {

			// Crear la sesión
			HttpSession session = request.getSession();
			session.setAttribute("usuario", p); // Guardar la persona en la sesión

			if (p.getTipoPersona().equals("CN") || p.getTipoPersona().equals("CP")) {
				request.setAttribute("container", "./cliente/Home.jsp");
			}

			
			model.Logger.añadirAlLog(usuario, "Inicio de sesión del usuario "+usuario);

			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else

		{
//			model.Logger.añadirAlLog(usuario, "Inicio erróneo de sesión del usuario "+usuario);
			
			request.setAttribute("error", true);
			request.setAttribute("container", "cliente/LogIn.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

}
