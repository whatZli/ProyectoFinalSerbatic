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
				<li class="nav-item active"><a class="nav-link" href="Products">Productos</a></li>

				<jsp:include page="../comun_trabajador/MenuComun.jsp" /> 

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle active" href="http://example.com"
					id="dropdown07" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false">Operaciones T.Compras</a>
					<div class="dropdown-menu" aria-labelledby="dropdown07">
						<a class="dropdown-item" href="ConsultarPedidos">Consultar
							todos los pedidos</a> <a class="dropdown-item"
							href="ConsultarPedidosCliente">Buscar pedidos cliente</a> <a
							class="dropdown-item" href="CrearCategoria">Crear categoria</a><a
							class="dropdown-item" href="CrearProducto">Crear producto</a><a
							class="dropdown-item" href="TCConsultarProducto">Consultar producto</a>
					</div></li>
			</ul>

			<ul class="navbar-nav  ml-4 mt-1" style="text-align: right;">
				<li class="nav-item active"><a class="nav-link" href="Perfil">Perfil</a></li>
				<li class="nav-item "><a class="nav-link active" href="LogOut">Logout
						<i class="fa fa-sign-in" aria-hidden="true"></i>
				</a></li>
			</ul>
		</div>
	</div>
</nav>