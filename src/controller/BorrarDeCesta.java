package controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Productos;
import modelDAO.ProductosDAO;

/**
 * Servlet implementation class BorrarDeCesta
 */
@WebServlet("/BorrarDeCesta")
public class BorrarDeCesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BorrarDeCesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Borrar de cesta");
		
		int id_producto = Integer.parseInt(request.getParameter("producto"));
		String origen = (String) (request.getParameter("origen"));

		// Crear session
		HttpSession session = request.getSession(true);


		if (session.getAttribute("cesta") != null) {

			LinkedList<Productos> articulos = new LinkedList();
			
			articulos = (LinkedList) session.getAttribute("cesta");
			
			Productos p = ProductosDAO.buscarProducto(id_producto);

			Iterator<Productos> iter = articulos.iterator();
			while (iter.hasNext()) {
				Productos ob = iter.next();
			     if(ob.getId() == id_producto) {
			       iter.remove();
			       break;
			     }
			}
			
			session.setAttribute("cesta", articulos);
		}


		request.getRequestDispatcher(origen).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
