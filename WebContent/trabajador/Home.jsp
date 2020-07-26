<%@page import="model.Personas"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container">
	
	
	<%

	Personas p = (Personas) session.getAttribute("usuario"); // Recuperar la persona en la sesión
	if(p.getTipoPersona().equals("TV")){
	%>
	
	<div class="row">
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="ConsultarPedidos"
				class="after-loop-item card border-0 card-templates shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Conceder devolución</h4>
					<p class="w-75">Conceder la devolución de un producto o pedido</p>
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="TVAplicarDescuentoProducto"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Aplicar descuento</h4>
					<p class="w-75">Aplicar descuentos a un producto</p> 
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="TVGenerarFactura"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Generar factura</h4>
					<p class="w-75">Generar una factura de un pedido concreto</p>  
				</div>
			</a>
		</div>
	<%
	} else{ %>
	
	<div class="row">
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="ConsultarPedidos"
				class="after-loop-item card border-0 card-templates shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Consultar pedidos</h4>
					<p class="w-75">Consultar todos los pedidos y gestionarlos</p>
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="ConsultarPedidosCliente"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Consultar pedido</h4>
					<p class="w-75">Consultar los pedidos de un cliente</p> 
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="CrearCategoria"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Crear categoría</h4>
					<p class="w-75">Crear una categoría para almacenar productos</p>  
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="CrearProducto"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Crear producto</h4>
					<p class="w-75">Crear un producto</p>  
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="TCConsultarProducto"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Consultar producto</h4>
					<p class="w-75">Consultar producto y sus valoraciones</p>  
				</div>
			</a>
		</div>
	<% } %> 
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="OCEnviarCorreoTrabajador"
				class="after-loop-item card border-0 card-templates shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Envio mensajes</h4>
					<p class="w-75">Enviar un mensaje a otro trabajador</p>
				</div>
			</a>
		</div>
		<div class="col-lg-4 col-md-8 mb-5 mb-lg-0 mx-auto">
			<a href="OCVisualizarCorreo"
				class="after-loop-item card border-0 card-snippets shadow-lg">
				<div class="card-body d-flex align-items-end flex-column text-right">
					<h4>Gestión de mensajes</h4>
					<p class="w-75">Ver, contestar y borrar mensajes</p>
				</div>
			</a>
		</div>
	</div>
</div>