package controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.util.LinkedList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;

import model.CabeceraPedido;
import model.DetallePedido;
import modelDAO.CabeceraPedidoDAO;
import modelDAO.DetallePedidoDAO;

/**
 * Servlet implementation class TVGenerarFacturaPDF
 */
@WebServlet("/TVGenerarFacturaPDF")
public class TVGenerarFacturaPDF extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TVGenerarFacturaPDF() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println(request.getParameter("id_pedido"));
		int id_pedido = Integer.parseInt(request.getParameter("id_pedido"));

		try {

			// Crear PDF
			// Se crea el documento
			Document documento = new Document();

			// Se crea el OutputStream para el fichero donde queremos dejar el pdf.
			FileOutputStream ficheroPdf = new FileOutputStream("C:/SerbaticPDF/" + id_pedido + ".pdf");

			// Se asocia el documento al OutputStream y se indica que el espaciado entre
			// lineas sera de 20. Esta llamada debe hacerse antes de abrir el documento

			PdfWriter.getInstance(documento, ficheroPdf).setInitialLeading(20);

			// Se abre el documento.
			documento.open();

			documento.add(new Paragraph("Factura del pedido " + id_pedido));
			documento.add(new Paragraph(" "));
			
			LinkedList<DetallePedido> ldp = DetallePedidoDAO.buscarDetallesPedido(id_pedido);
			for (DetallePedido dp : ldp) {
				documento.add(new Paragraph("Producto->"+dp.getProductos().getDescripcion()));
				documento.add(new Paragraph("Precio->" + dp.getTotalLinea()+"€"));
				documento.add(new Paragraph(" "));
			}


			documento.close();

		} catch (

		Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.getRequestDispatcher("Home").include(request, response); 

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
