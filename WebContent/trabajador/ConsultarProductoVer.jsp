<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">
	<h1>Consultar Producto</h1>
	<div class="row">
		<div class="col-8">
			<h4>Producto</h4>
			<table class="table">
				<thead>
					<tr>
						<th scope="col">ID#</th>
						<th scope="col">Descripción</th>
						<th scope="col">Precio</th>
						<th scope="col">Stock</th>
						<th scope="col">Categoría</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><c:out value="${producto.id }"></c:out></td>
						<td><c:out value="${producto.descripcion }"></c:out></td>
						<td><c:out value="${producto.precioUnitarioSinIva }"></c:out></td>
						<td><c:out value="${producto.stock }"></c:out></td>
						<td><c:out value="${producto.categoriasProducto }"></c:out></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-4">
			<div class="page-header">
				<h4>Valoración media y comentarios de los clientes</h4>
			</div>

			<c:choose>
				<c:when test="${not empty valoracion_media}">
					<div class="h5">
						Valoración media:
						<c:out value="${valoracion_media}"></c:out>

					</div>
				</c:when>
				<c:otherwise>
					<div class="h5">No hay valoraciones aún</div>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${empty comentarios}">
					<p>Aún no hay comentarios disponibles</p>
				</c:when>
				<c:otherwise>
					<div class="comments-list">
						<c:forEach items="${comentarios}" var="comentario">
							<div class="media">
								<div class="media-body">
									<h4 class="media-heading user_name">
										Valoración
										<c:out value="${comentario.valoracion }"></c:out>
										/10
									</h4>
									<c:out value="${comentario.comentarios}"></c:out>

								</div>
							</div>

						</c:forEach>

					</div>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
	
	<a href="TCConsultarProducto" class="btn btn-primary">Consultar otro producto</a>
	<a href="Home" class="btn btn-primary">Volver al Home</a>
</div>


