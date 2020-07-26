<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container mt-4 mb-4 ">

	<h1>Buscar pedidos de un cliente</h1>

	<form action="ConsultarPedidosCliente" method="post" > 
		<div class="form-group">

			<label for="exampleFormControlSelect1">Cliente a buscar:</label> <select
				name="id_cliente" class="form-control"
				id="exampleFormControlSelect1">
				<c:forEach items="${personasClientes}" var="personaCliente">
					<option value="<c:out value="${personaCliente.id}" />"><c:out
							value="${personaCliente.nombre}" />
						<c:out value="${personaCliente.apellido1}" />
						<c:out value="${personaCliente.apellido2}" /></option>
				</c:forEach>
			</select>
			<button type="submit" class="btn btn-primary mt-2 " >Buscar Cliente</button> 
		</div>
	</form> 
</div>