<%@page import="model.Personas"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="demo-container">
	<div class="demo-container-inner">
		<div class="container">

			<h1>Ver pedidos realizados para generar factura</h1>
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
									Euros 
								</p>
							</div>
							<div class="card-block">
								<div class="pull-xs-right flipable">
									<div class="flipable-group m-2">
										
										<a
											href="TVGenerarFacturaPDF?id_pedido=<c:out value="${pedido.id}" />"
											class="btn btn-warning remove-from-cart"> Generar Factura PDF
										</a>
<!-- 										<a -->
<%-- 											href="TVDescargarFacturaPDF?id_pedido=<c:out value="${pedido.id}" />" --%>
<!-- 											class="btn btn-success remove-from-cart"> Descargar -->
<!-- 										</a> -->

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