package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelDAO.CabeceraPedidoDAO;
import modelDAO.DetallePedidoDAO;

/**
 * Servlet implementation class CabeceraPedidoVerDetalles
 */
@WebServlet("/CabeceraPedidoVerDetalles")
public class CabeceraPedidoVerDetalles extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CabeceraPedidoVerDetalles() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int id_pedido=Integer.parseInt(request.getParameter("id_pedido")); 
	
		
//		CabeceraPedidoDAO.borrarCabeceraPedido(id_pedido);
		request.setAttribute("linea_pedido",DetallePedidoDAO.buscarDetallesPedido(id_pedido));
		
		request.setAttribute("container", "cliente/VerDetallesPedido.jsp");
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
