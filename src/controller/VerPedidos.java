package controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

import model.CabeceraPedido;
import model.Personas;
import modelDAO.CabeceraPedidoDAO;
import modelDAO.ProductosDAO;

/**
 * Servlet implementation class VerPerdidos
 */
@WebServlet("/VerPedidos")
public class VerPedidos extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerPedidos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();  
		Personas p = (Personas)session.getAttribute("usuario"); 
		
//		LinkedList<CabeceraPedido> lcp = new LinkedList<CabeceraPedido>();  
//		lcp = CabeceraPedidoDAO.obtenerCabeceraDeCliente(p.getId());
		
		request.setAttribute("pedidos", CabeceraPedidoDAO.obtenerCabeceraDeCliente(p.getId()));
		
		request.setAttribute("container", "cliente/VerPedidos.jsp");
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
