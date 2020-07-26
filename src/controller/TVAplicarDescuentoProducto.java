package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelDAO.ProductosDAO;

/**
 * Servlet implementation class TVAplicarDescuentoProducto
 */
@WebServlet("/TVAplicarDescuentoProducto")
public class TVAplicarDescuentoProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TVAplicarDescuentoProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("productos", ProductosDAO.devolverTodosLosProductos());
		
		request.setAttribute("container", "trabajador/AplicarDescuentoProducto.jsp");
		request.getRequestDispatcher("index.jsp").include(request, response); 
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id_producto = Integer.parseInt(request.getParameter("id_producto"));
		Byte descuento = Byte.parseByte(request.getParameter("descuento"));
		
		ProductosDAO.cambiarDescuentoProducto(id_producto,descuento);
		
		request.setAttribute("container", "trabajador/Home.jsp");
		request.getRequestDispatcher("index.jsp").include(request, response); 
		
	}

}
