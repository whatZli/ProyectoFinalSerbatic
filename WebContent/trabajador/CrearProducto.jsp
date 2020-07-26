<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container bootstrap snippet mb-5">
	<div class="row">
		<div class="col-sm-10">
			<h1>Crear producto</h1>
		</div>
	</div>
	<div class="row d-flex justify-content-center">

		<!--/col-3-->
		<div class="col-sm-9 ">

			<div class="tab-content ">
				<div class="tab-pane active" id="home">
					<hr>
					<form class="form" action="CrearProducto" method="POST"
						id="registrationForm">

						<div style="display: inline; width: 40%;">
							<div class="form-group">
								<div class="col-xs-6">
									<label for="descripcion"> Descripción </label> <input
										type="text"  name="descripcion" class="form-control"
										id="descripcion" title="">
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-xs-6">
									<label for="rutaImagen"> Ruta imagen </label> <input
										type="text" name="rutaImagen" class="form-control" 
										id="rutaImagen" title="">
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-xs-6">
									<label for="stock"> Stock </label> <input type="text" name="stock"
										class="form-control"  id="stock" title="">
								</div>
							</div>
						</div>
						<div style="display: inline; width: 40%;">
							<div class="form-group">
								<div class="col-xs-6">
									<label for="precio"> Precio sin IVA </label> <input
										type="text" name="precio" class="form-control" id="precio"
										>
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-xs-6">
									<label for="descuento"> Descuento </label> <input type="number"
										class="form-control" name="descuento" id="descuento" title="">
								</div>
							</div>
							<br>
							<div class="form-group">
								<div class="col-xs-6">
									<label for="canjeable"> Canjeable </label> <select name="canjeable"
										class="selectpicker" data-width="auto"> 
										<option title="canjeable" value="1">Si</option>
										<option title="canjeable" value="0">No</option>
									</select>

								</div>
							</div>
							<div class="form-group">
								<div class="col-xs-6">
									<label for="canjeable"> Categoria </label> <select name="categoria"
										class="selectpicker" data-width="auto">
										<% out.println(request.getAttribute("categorias")); %>
										<c:forEach items="${categorias}" var="categoria">
											<option title="cat" value="<c:out value = "${categoria.id}"/>" ><c:out value = "${categoria.categoria}"/></option>
										</c:forEach>
									</select>

								</div>
							</div>

							<div class="form-group ">
								<div class="col-xs-6 ">
									<br>
									<button class="btn btn-lg btn-success" type="submit">
										<i class="glyphicon glyphicon-ok-sign"></i> Crear producto
									</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>