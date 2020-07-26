<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">

	<h1>Consultar Producto</h1>
	<form action="TCConsultarProducto" method="post">
		<div class="form-group">
			<label for="exampleFormControlSelect1">Producto para consultar:</label> <select name="id_producto" class="form-control"
				id="exampleFormControlSelect1">
				<c:forEach items="${productos}" var="producto">
					<option value="<c:out value="${producto.id}" />">
						<c:out value="${producto.id}" /> -
						<c:out value="${producto.descripcion}" /></option>
				</c:forEach>
			</select>
		</div>
		<button type="submit" class="btn btn-primary mt-2 ">Consultar producto</button>
	</form>
</div>