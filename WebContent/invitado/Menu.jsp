<%@page import="modelDAO.CategoriaProductoDAO"%>
<%@page import="model.CategoriasProducto"%>
<%@page import="java.util.LinkedList"%>
<%@page import="model.Productos"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	<div class="container">
		<a class="navbar-brand" href="Home">RopLike</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarsExample07" aria-controls="navbarsExample07"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse " id="navbarsExample07">
			<ul class="navbar-nav mr-auto ml-4 mt-1">
				<li class="nav-item active "><a class="nav-link" href="Home">Home</a>
				</li>
				<li class="nav-item active"><a class="nav-link" href="Products">Todos los productos</a>
				</li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="http://example.com"
					id="dropdown07" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Categorías</a>
					
					<div class="dropdown-menu" aria-labelledby="dropdown07">
					<% ArrayList<CategoriasProducto> alcp = CategoriaProductoDAO.devolverTodosLasCategorias(); 
						for(CategoriasProducto cp: alcp){
							%>
							<a class="dropdown-item" href="ProductsFiltradoCategoria?categoria=<% out.println(cp.getId()); %>">Categoría <% out.println(cp.getCategoria()); %></a>
							<%
						}
					%>
					</div></li>
			</ul>
<!-- 			<form class="form-inline my-2 my-md-0"> -->
<!-- 				<input class="form-control" type="text" placeholder="Search" -->
<!-- 					aria-label="Search"> -->
<!-- 			</form> -->
			<ul class="navbar-nav  ml-4 mt-1" style="text-align: right;">
				<li class="nav-item "><a class="nav-link active" href="LogIn">Login
						<i class="fa fa-sign-in" aria-hidden="true"></i>
				</a></li>
				<button type="button" data-toggle="modal" data-target="#cartModal">Cesta</button>
			</ul>
		</div>
	</div>
</nav>

<div class="modal fade" id="cartModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-lg modal-dialog-centered"
		role="document">
		<div class="modal-content">
			<div class="modal-header border-bottom-0">
				<h5 class="modal-title" id="exampleModalLabel">Tu cesta de la
					compra</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<%
					if (session.getAttribute("cesta") != null) {
						LinkedList<Productos> pros = (LinkedList) session.getAttribute("cesta");
						if (pros.size() > 0) {
							int contadorPrecioTotal = 0;
				%>
				<table class="table table-image">
					<thead>
						<tr>
							<th scope="col"></th>
							<th scope="col">Producto</th>
							<th scope="col">Precio</th>
							<!--               <th scope="col">Qty</th> -->
							<!--               <th scope="col">Total</th> -->
							<th scope="col">Acciones</th>
						</tr>
					</thead>
					<tbody>

						<%
							for (Productos p : pros) {
						%>
						<tr>
							<td class="w-25"><img
								src="<%out.println(p.getRutaImagen());%>"
								class="img-fluid img-thumbnail" alt="Sheep"></td>
							<td>
								<%
									out.println(p.getDescripcion());
								%>
							</td>
							<td>
								<%
									out.println(p.getPrecioUnitarioSinIva());
								%>€
							</td>
							<!-- 							<td class="qty"><input type="text" class="form-control" -->
							<!-- 								id="input1" value="2"></td> -->
							<!--               <td>178$</td> -->
							<td><a
								href="BorrarDeCesta?producto=<%out.println(p.getId());%>&origen=GestionPedido"
								class="btn btn-danger btn-sm"> <i class="fa fa-times"></i>
							</a></td>

						</tr>
						<%
							contadorPrecioTotal = contadorPrecioTotal + p.getPrecioUnitarioSinIva();
									}
						%>

					</tbody>
				</table>
				<%
					if (session.getAttribute("cesta") != null) {
				%>
				<div class="d-flex justify-content-end">
					<h5>
						Total: <span class="price text-success"> <%
 	out.println(contadorPrecioTotal);
 %>€
						</span>
					</h5>
				</div>
				<%
					}

						} else {
				%>
				<h4>La cesta está vacía</h4>
				<%
					}

					} else {
				%>
				<h4>No hay productos en la cesta</h4>
				<%
					}
				%>
			</div>
			<div class="modal-footer border-top-0 d-flex justify-content-between">
				<button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
				<a href="GestionPedido" class="btn btn-success">Terminar compra</a>
			</div>
		</div>
	</div>
</div>