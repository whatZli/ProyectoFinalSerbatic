<%@page import="model.Productos"%>
<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="jumbotron text-center">
	<div class="container">
		<h1 class="jumbotron-heading">Tu cesta de la compra</h1>
	</div>
</section>
<%
	if (session.getAttribute("cesta") != null) {
		LinkedList<Productos> pros = (LinkedList) session.getAttribute("cesta");
		if (pros.size() > 0) {
			int contadorPrecioTotal = 0;
%>
<div class="container mb-4">
	<div class="row">
		<div class="col-12">
			<div class="table-responsive">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">Producto</th>
							<th scope="col">Disponibilidad</th>
							<!--                             <th scope="col" class="text-center">Quantity</th> -->
							<th scope="col" class="text-right">Precio unidad</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<%
							for (Productos p : pros) {
						%>
						<tr>
							<td><img src="<%out.println(p.getRutaImagen());%>"  style="width:100px;"/></td>
							<td>
								<%
									out.println(p.getDescripcion());
								%>
							</td>
							<td>
								<%
									if (p.getStock() > 0) {
													out.println("En stock");
												} else {
													out.println("Fuera de stock");
												}
								%>
							</td>
							<!-- 							<td><input class="form-control" type="text" value="1" /></td> -->
							<td class="text-right">
								<%
									out.println(p.getPrecioUnitarioSinIva()-p.getPrecioUnitarioSinIva()*p.getDescuento()/100);
								%>€  
							</td>
							<td><a
								href="BorrarDeCesta?producto=<%out.println(p.getId());%>&origen=GestionPedido"
								class="btn btn-danger btn-sm"> <i class="fa fa-times"></i>
							</a></td>
						</tr>
						<%
							contadorPrecioTotal = contadorPrecioTotal + (p.getPrecioUnitarioSinIva()-p.getPrecioUnitarioSinIva()*p.getDescuento()/100);
									}
						%>

						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>Sub-Total</td>
							<td class="text-right"><% out.println(contadorPrecioTotal); %> €</td> 
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td>Gastos de envío</td>
							<td class="text-right">0 €</td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td></td>
							<td></td>
							<td><strong>Total</strong></td>
							<td class="text-right"><strong><% out.println(contadorPrecioTotal+0); %> €</strong></td> 
						</tr>
					</tbody>
				</table>
			</div>
		</div>
		<div class="col mb-2">
			<div class="row">
				<div class="col-sm-12  col-md-6">
					<a href="Products" class="btn btn-block btn-light">Continuar comprando</a>
				</div>
				<div class="col-sm-12 col-md-6 text-right">
					<a href="FinalizarCompra" class="btn btn-lg btn-block btn-success text-uppercase">Finalizar
						pedido</a>
				</div>
			</div>
		</div>
	</div>
</div>
<%
	} else {
%>

<div class="container mb-4">
	<div class="row">
		<div class="col-12">
			<h4>La cesta está vacía</h4>
		</div>
	</div>
</div>
<%
	}

	} else {
%>
<div class="container mb-4">
	<div class="row">
		<div class="col-12">
			<h4>No hay productos en la cesta</h4>
		</div>
	</div>
</div>
<%
	}
%>
