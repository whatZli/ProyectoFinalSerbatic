package controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Clientes;
import model.Personas;
import model.Productos;
import modelDAO.CabeceraPedidoDAO;
import modelDAO.DetallePedidoDAO;

/**
 * Servlet implementation class FinalizarCompra
 */
@WebServlet("/FinalizarCompra")
public class FinalizarCompra extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FinalizarCompra() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("Finalizar compra");

		HttpSession session = request.getSession();

		Personas p = (Personas) session.getAttribute("usuario");
		if (p != null) {
			if (p.getTipoPersona().equals("CN") || p.getTipoPersona().equals("CP")) {
				System.out.println("Usuario logueado como cliente. Se va a comprar");

				if (session.getAttribute("cesta") != null) {
					LinkedList<Productos> pros = (LinkedList) session.getAttribute("cesta");
					if (pros.size() > 0) {
						int contadorPrecioTotal = 0;
						for (Productos prod : pros) {
							contadorPrecioTotal = contadorPrecioTotal + prod.getPrecioUnitarioSinIva();
						}
						int idCabeceraPedido = CabeceraPedidoDAO.crearPedido(p.getId(), contadorPrecioTotal);
						
						DetallePedidoDAO.insertarDetallePedido(idCabeceraPedido, pros);
						
						session.setAttribute("cesta", null);
						
						//Escribir en Log
						model.Logger.añadirAlLog(p.getDni(), "El usuario "+p.getDni()+" ha realizado una compra");
						
						request.getRequestDispatcher("VerPedidos").forward(request, response); 
					}
				}

				
			}
		} else

		{
			request.setAttribute("container", "cliente/LogIn.jsp");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
