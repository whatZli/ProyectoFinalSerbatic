package controller;

import java.io.IOException;
import java.util.LinkedList;

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
 * Servlet implementation class OCVisualizarCorreo
 */
@WebServlet("/OCVisualizarCorreo")
public class OCVisualizarCorreo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OCVisualizarCorreo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		Personas p = (Personas) session.getAttribute("usuario"); // Recuperar la persona en la sesión

		request.setAttribute("persona", p);
		request.setAttribute("lista_mensajes", MensajeriaDAO.listaMensajesTrabajador(p.getId()));
		
		request.setAttribute("container", "comun_trabajador/VisualizarCorreo.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
