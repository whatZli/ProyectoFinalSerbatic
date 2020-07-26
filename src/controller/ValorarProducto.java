package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.ValoracionesProductos;
import modelDAO.ProductosDAO;
import modelDAO.ValoracionProductosDAO;

/**
 * Servlet implementation class ValorarProducto
 */
@WebServlet("/ValorarProducto")
public class ValorarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ValorarProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id_producto= Integer.parseInt(request.getParameter("id_producto"));
		
		request.setAttribute("producto", ProductosDAO.buscarProducto(id_producto));
		

		request.setAttribute("container", "cliente/ValorarProducto.jsp"); 
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id_producto= Integer.parseInt((String) request.getParameter("idProducto")); 
		String valoracion= request.getParameter("valoracion");
		String comentario= request.getParameter("comentario");
		
		ValoracionesProductos vp = new ValoracionesProductos(id_producto,valoracion,comentario);
		
		ValoracionProductosDAO.guardarValoracion(vp);
		
		request.setAttribute("container", "VerPedidos");
		
		request.getRequestDispatcher("index.jsp").include(request, response);
		
	}

}
