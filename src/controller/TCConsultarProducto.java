package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelDAO.ProductosDAO;
import modelDAO.ValoracionProductosDAO;

/**
 * Servlet implementation class TCConsultarProducto
 */
@WebServlet("/TCConsultarProducto")
public class TCConsultarProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TCConsultarProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("productos", ProductosDAO.devolverTodosLosProductos());
		
		request.setAttribute("container", "trabajador/ConsultarProducto.jsp");
		request.getRequestDispatcher("index.jsp").include(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id_producto= Integer.parseInt(request.getParameter("id_producto"));
		
		request.setAttribute("producto", ProductosDAO.buscarProducto(id_producto));
		
		request.setAttribute("valoracion_media", ValoracionProductosDAO.valoracionMedia(id_producto));
		
		request.setAttribute("comentarios", ValoracionProductosDAO.listadoComentariosUnProducto(id_producto));
		
		request.setAttribute("container", "trabajador/ConsultarProductoVer.jsp");
		request.getRequestDispatcher("index.jsp").include(request, response);
		
	}

}
