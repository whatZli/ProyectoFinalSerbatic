package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Productos;
import modelDAO.CategoriaProductoDAO;
import modelDAO.ProductosDAO;

/**
 * Servlet implementation class CrearProducto
 */
@WebServlet("/CrearProducto")
public class CrearProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrearProducto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setAttribute("categorias", CategoriaProductoDAO.devolverTodosLasCategorias());
		
		request.setAttribute("container", "trabajador/CrearProducto.jsp");
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Se va a crear un producto");
		
		String descripcion=(String) request.getParameter("descripcion");
		String rutaImagen=(String) request.getParameter("rutaImagen");
		
		int stock= Integer.parseInt((String) request.getParameter("stock")); 
		int precio=Integer.parseInt((String) request.getParameter("precio"));
		Byte descuento=Byte.parseByte(request.getParameter("descuento"));
		boolean canjeable=Boolean.parseBoolean(request.getParameter("canjeable"));
		int categoria=Integer.parseInt(request.getParameter("categoria"));
		
		System.out.println(categoria);
		
		Productos p = new Productos(descripcion,precio,122,canjeable,descuento,rutaImagen,false,categoria);
		
		ProductosDAO.guardarProcuto(p);
		
		request.getRequestDispatcher("Products").forward(request, response);
		
	}

}
