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
import modelDAO.TrabajadorDAO;

/**
 * Servlet implementation class OCEnviarCorreoTrabajador
 */
@WebServlet("/OCEnviarCorreoTrabajador")
public class OCEnviarCorreoTrabajador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OCEnviarCorreoTrabajador() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setAttribute("personasTrabajadores", TrabajadorDAO.devolverTodosLosTrabajadores());
		
		request.setAttribute("container", "comun_trabajador/EnviarMensaje.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Enviar nuevo correo");

		HttpSession session=request.getSession();  
		Personas p = (Personas)session.getAttribute("usuario");

		int id_trabajadorDestino = Integer.parseInt(request.getParameter("id_trabajador"));
		String asunto = request.getParameter("asunto");
		String mensaje = request.getParameter("mensaje");

		Mensajeria m = new Mensajeria(p, id_trabajadorDestino, null, asunto, mensaje, null, false, false);

		MensajeriaDAO.guardarMensaje(m);

		request.getRequestDispatcher("OCVisualizarCorreo").forward(request, response);
	}

}
