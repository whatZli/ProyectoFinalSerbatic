package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Personas;
import modelDAO.LoginDAO;

/**
 * Servlet implementation class LogIn
 */
@WebServlet("/LoginTrabajadores")
public class LoginTrabajadores extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginTrabajadores() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("container", "trabajador/LogIn.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Se ha recibido una petición Post al Login de trabajadores");

		String usuario = request.getParameter("usuario");
		String password = request.getParameter("password");

		System.out.println("Logueando trabajador-> " + usuario + "---" + password);

		Personas p = LoginDAO.comprobarUsuarioTrabajador(usuario, password);

		if (p != null) {

			// Crear la sesión
			HttpSession session = request.getSession();
			session.setAttribute("usuario", p); // Guardar la persona en la sesión

			if (p.getTipoPersona().equals("TV") || p.getTipoPersona().equals("TC")) {
				request.setAttribute("container", "./trabajador/Home.jsp");
			}

			if (p.getTipoPersona().equals("AD")) {
				request.setAttribute("container", "./admin/Home.jsp");
			}

			model.Logger.añadirAlLog(usuario, "Inicio de sesión del usuario " + usuario);

			request.getRequestDispatcher("index.jsp").forward(request, response);

		} else {
			request.setAttribute("error", true);
			request.setAttribute("container", "trabajador/LogIn.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

}
