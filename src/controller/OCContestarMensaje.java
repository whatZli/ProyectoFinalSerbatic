package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Mensajeria;
import model.Personas;
import modelDAO.MensajeriaDAO;

/**
 * Servlet implementation class OCContestarMensaje
 */
@WebServlet("/OCContestarMensaje")
public class OCContestarMensaje extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OCContestarMensaje() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_mensaje = Integer.parseInt(request.getParameter("id_mensaje"));

		request.setAttribute("mensaje", MensajeriaDAO.obtenerUnMensaje(id_mensaje));

		request.setAttribute("container", "comun_trabajador/ContestarMensaje.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session=request.getSession();  
		Personas p = (Personas)session.getAttribute("usuario");
		
		
		int id_mensaje_origen = Integer.parseInt(request.getParameter("id_mensaje_origen"));
		int id_persona_origen = Integer.parseInt(request.getParameter("id_persona_origen"));
		String asunto = request.getParameter("asunto");
		String mensaje= request.getParameter("mensaje");
		
		Mensajeria m = new Mensajeria(p, id_persona_origen, null, asunto, mensaje, null, false, false);
		
		MensajeriaDAO.guardarMensaje(m);
		
		MensajeriaDAO.contestarMensaje(id_mensaje_origen);

		request.getRequestDispatcher("OCVisualizarCorreo").forward(request, response);
	}

}
