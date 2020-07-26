<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="demo-container">
	<div class="demo-container-inner">
		<div class="container">

			<h1>Consultar todos los pedidos</h1>
			<div class="row">

				<c:forEach items="${pedidos}" var="pedido">


					<div class="col-xs-6 col-md-4">
						<div class="card">
							<div class="card-block">
								<h4 class="card-title">
									Pedido nº
									<c:out value="${pedido.id}" />
								</h4>
								<p class="card-text">
									Importe total
									<c:out value="${pedido.importeTotal}" />
									€
								</p>
							</div>
							<div class="card-block">
								<div class="pull-xs-right flipable">
									<div class="flipable-group m-2"> 
										<!-- 										<button class="btn btn-primary add-to-cart"> -->
										<!-- 											<span class="fa fa-cart-plus"></span> -->
										<!-- 										</button> -->
										<a href="CabeceraPedidoBorrar?id_pedido=<c:out value="${pedido.id}" />" class="btn btn-danger remove-from-cart">
											Devolver pedido
										</a>
										<a href="CabeceraPedidoVerDetalles?id_pedido=<c:out value="${pedido.id}" />" class="btn btn-primary remove-from-cart">
											Ver pedido
										</a>
									</div>
								</div>
								<!-- 								<p class="card-text cart-price">59$</p> -->
							</div>
						</div>
					</div>

				</c:forEach>
			</div>

		</div>
	</div>
</div>