<%@page import="model.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="container">
	<h3 class="h3">Productos disponibles</h3>
	<div class="row">
			<c:forEach items="${productos}" var="producto">
				<div class="col-md-3 col-sm-4"> 
					<div class="product-grid8" >
						<div class="product-image8">
							<a href='VerProducto?producto=<c:out value = "${producto.id}"/>'>
								<img class="pic-1" src="${producto.rutaImagen}"> <img
								class="pic-2" src="${producto.rutaImagen}">
							</a>
							<ul class="social">
								<li><a
									href='VerProducto?producto=<c:out value = "${producto.id}"/>'
									class="fa fa-search"></a></li>
								<li class="comprar">
									<%--                                             	<span id="item_${producto.id}">${producto.id}</span> --%>
									<%--                                             	<span>${producto.id}</span> --%>
									<%--                                             	<span>${producto.precioUnitarioSinIva}</span> --%>
									<a href='Comprar?producto=<c:out value = "${producto.id}"/>&origen=Products' class="fa fa-shopping-cart"></a>
								</li>
							</ul>
							<c:if test="${producto.descuento < 15}">
								<span class="product-discount-label-success">-${producto.descuento}%</span>
							</c:if>
							<c:if test="${producto.descuento > 15 and producto.descuento <30}">
								<span class="product-discount-label">-${producto.descuento}%</span>
							</c:if>
							<c:if test="${producto.descuento > 30}"> 
								<span class="product-discount-label-warning">-${producto.descuento}%</span>
							</c:if>
						</div>
						<div class="product-content">
							<div class="price">
								${producto.precioUnitarioSinIva-producto.precioUnitarioSinIva*producto.descuento/100}€ <span>${producto.precioUnitarioSinIva}€ </span>
							</div>
							<span class="product-shipping">En venta</span>
							<h3 class="title">
								<a href='VerProducto?producto=<c:out value = "${producto.id}"/>'>${producto.descripcion}</a>
							</h3>
							<a class="all-deals"
								href='VerProducto?producto=<c:out value = "${producto.id}"/>'>Ver
								artículo<i class="fa fa-angle-right icon"></i>
							</a>
						</div>
					</div>
				</div>
				<br>
			</c:forEach>
	</div>
</div>
<hr>