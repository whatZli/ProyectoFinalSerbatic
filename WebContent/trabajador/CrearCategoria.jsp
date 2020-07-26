<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container ">
	<div class="row d-flex justify-content-center m-5">   
		<form method="post" action="CrearCategoria">
			<h3>Crear categoria</h3>
			<div class="form-group row">
				<label for="text" class="col-4 col-form-label">Nombre de la categoría</label>
				<div class="col-8">
					<div class="input-group">
						<input id="text" name="categoria" type="text" class="form-control">
					</div>
				</div>
			</div>
			<div class="form-group row">
				<div class="offset-4 col-8">
					<button name="submit" type="submit" class="btn btn-primary">Crear</button>
				</div>
			</div>
		</form>
	</div>
</div>