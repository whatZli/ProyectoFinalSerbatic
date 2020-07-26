<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<h1>Aplicar descuento a un producto</h1>

	<form action="TVAplicarDescuentoProducto" method="post">
		<div class="form-group">
			<label for="exampleFormControlSelect1">Producto para
				modificar descuento:</label> <select name="id_producto" class="form-control"
				id="exampleFormControlSelect1">
				<c:forEach items="${productos}" var="producto">
					<option value="<c:out value="${producto.id}" />">
						<c:out value="${producto.id}" /> -
						<c:out value="${producto.descripcion}" /></option>
				</c:forEach>
			</select>
		</div>
		<div class="form-group">
			<label for="example-number-input" class="form-control">Descuento</label>
			<input class="form-control" type="number"
				value="<c:out value="${producto.descuento}" />"
				id="example-number-input" name="descuento">

		</div>

		<button type="submit" class="btn btn-primary mt-2 ">Cambiar
			descuento</button>

	</form>
</div>