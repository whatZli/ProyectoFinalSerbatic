package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelDAO.MensajeriaDAO;

/**
 * Servlet implementation class OCVerMensaje
 */
@WebServlet("/OCVerMensaje")
public class OCVerMensaje extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OCVerMensaje() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id_mensaje = Integer.parseInt(request.getParameter("id_mensaje"));
		
		request.setAttribute("mensaje", MensajeriaDAO.obtenerUnMensaje(id_mensaje));
		MensajeriaDAO.leerMensaje(id_mensaje);
		
		request.setAttribute("container", "comun_trabajador/VerMensaje.jsp");
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
