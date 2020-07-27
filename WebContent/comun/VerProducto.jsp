<%@page import="model.Productos"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<hr>
	<div class="row">
		<aside class="col-sm-5 border-right">
			<article class="gallery-wrap">
				<div class="img-big-wrap">
					<div>
						<a href="#"><img src="${producto.rutaImagen}"></a>
					</div>
				</div>
				<!-- slider-product.// -->
				<div class="img-small-wrap">
					<div class="item-gallery">
						<img src="${producto.rutaImagen}">
					</div>
					<div class="item-gallery">
						<img src="${producto.rutaImagen}">
					</div>
					<div class="item-gallery">
						<img src="${producto.rutaImagen}">
					</div>
					<div class="item-gallery">
						<img src="${producto.rutaImagen}">
					</div>
				</div>
				<!-- slider-nav.// -->
			</article>
			<!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
			<article class="card-body p-5">
				<h3 class="title mb-3">${producto.descripcion}</h3>

				<p class="price-detail-wrap">
					<span class="price h3 text-warning"> <span class="currency">EU
					</span><span class="num"> ${producto.precioUnitarioSinIva-producto.precioUnitarioSinIva*producto.descuento/100}€</span>
					</span>
				</p>
				<!-- price-detail-wrap .// -->
				<dl class="item-property">
					<dt>Descripción</dt>
					<dd>
						<p>${producto.descripcion}</p>
					</dd>
				</dl>
				<dl class="param param-feature">
					<dt>ID Producto#</dt>
					<dd>${producto.id}</dd>
				</dl>
				<dl class="param param-feature">
					<dt>ID Categoria#</dt>
					<dd>${producto.categoriasProducto}</dd>
				</dl>
				<!-- item-property-hor .// -->
				<!-- item-property-hor .// -->

				<hr>
				<div class="row">
					<div class="col-sm-5">
						<dl class="param param-inline">
							<dt>Cantidad:</dt>
							<dd>
								<select class="form-control form-control-sm"
									style="width: 70px;">
									<option>1</option>
									<option>2</option>
									<option>3</option>
								</select>
							</dd>
						</dl>
						<!-- item-property .// -->
					</div>
					<!-- col.// -->
				</div>
				<!-- row.// -->
				<hr>
				<a
					href='Comprar?producto=<c:out value = "${producto.id}"/>&origen=Products'
					class="btn btn-lg btn-primary text-uppercase"> Comprar </a>
				<!-- 						<a href="#" -->
				<!-- 						class="btn btn-lg btn-outline-primary text-uppercase"> <i -->
				<!-- 						class="fas fa-shopping-cart"></i> Añadir al carrito -->
				<!-- 					</a> -->
			</article>
			<!-- card-body.// -->
		</aside>
		<!-- col.// -->
	</div>
	<!-- row.// -->
	<hr>
	<div class="row">
		<div class="col">
			<div class="page-header">
				<h3>Comentarios de los clientes</h3>
			</div>

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
	<hr>
</div>