<%@page import="model.Personas"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">

	<h1>Ver detalles pedido</h1>
	<table class="table">
		<thead>
			<tr>
				<th></th>
				<th scope="col">ID_Línea#</th>
				<th scope="col">ID_Pedido#</th>
				<th scope="col">Descripción</th>
				<th scope="col">Cantidad</th>
				<th scope="col">Total línea</th>
				<th scope="col" style="text-align: center;">Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${linea_pedido}" var="linea">
				<tr>
					<td><img src='<c:out value="${linea.productos.rutaImagen}"/>'
						style="width: 45px;" /></td>
					<td><c:out value="${linea.id}" /></td>
					<td><c:out value="${linea.cabeceraPedido}" /></td>
					<td><c:out value="${linea.productos.descripcion}" /></td>
					<td><c:out value="${linea.cantidad}" /></td>
					<td><c:out value="${linea.totalLinea}" /></td>
					<td><a
						href="DetallePedidoDevolver?id_linea=<c:out value="${linea.id}" />"
						class="btn btn-danger remove-from-cart"> Devolver producto </a> <%
 	Personas p = (Personas) session.getAttribute("usuario");
 		if (!p.getTipoPersona().equals("TV")) {
 %> <a
						href="ValorarProducto?id_producto=<c:out value="${linea.productos.id}" />"
						class="btn btn-warning remove-from-cart"> Valorar producto </a> <%
 	}
 %></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>