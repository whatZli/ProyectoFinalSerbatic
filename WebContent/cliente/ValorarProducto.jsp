<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<h1>Valorar producto</h1>
	<form  action="ValorarProducto" method="post">
		<div class="form-group">
			<label for="id_producto">Id producto</label> <input type="text"
				class="form-control" id="id_producto" name="idProducto"
				value="<c:out value="${producto.id}"></c:out>">
		</div>
		<div class="form-group">
			<label for="descp">Descripción del producto</label> <input
				type="text" class="form-control" id="descp"
				value="<c:out value="${producto.descripcion}"></c:out>" disabled>
		</div>
		<div class="form-group">
			<label for="valoracion">Valoración</label> <select
				class="form-control" id="valoracion" name="valoracion">
				<option>1</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
				<option>5</option>
				<option>6</option>
				<option>7</option>
				<option>8</option>
				<option>9</option>
				<option>10</option>
			</select>
		</div>
		<div class="form-group">
			<label for="comentario">Comentario</label>
			<textarea class="form-control" id="comentario" name="comentario"
				rows="3"></textarea>
		</div>
		<input type="submit" class="btn btn-primary mb-5 "
			value="Enviar comentario"></input>
	</form>
</div>
