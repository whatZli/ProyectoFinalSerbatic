package controller;

import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Productos;
import modelDAO.ProductosDAO;

/**
 * Servlet implementation class Comprar
 */
@WebServlet("/Comprar")
public class AñadirACesta extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AñadirACesta() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id_producto = Integer.parseInt(request.getParameter("producto"));
		String origen = (String) (request.getParameter("origen"));

		Productos p = ProductosDAO.buscarProducto(id_producto);

		// Crear session
		HttpSession session = request.getSession(true);

		LinkedList articulos = new LinkedList();

		if (session.getAttribute("cesta") != null) {
			articulos = (LinkedList) session.getAttribute("cesta");
		}

		articulos.add(p);

		session.setAttribute("cesta", articulos);

		request.getRequestDispatcher(origen).forward(request, response);
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
