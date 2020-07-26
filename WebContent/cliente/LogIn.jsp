<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container login-container">
	<div class="row d-flex justify-content-center">
		<div class="col-md-6 login-form-1 ">
			<h3>Inicio de sesión de clientes</h3>
			<form method="post" action="LogIn">
				<div class="form-group">
					<input type="text" name="usuario" class="form-control"
						placeholder="Tu Id *" value="" />
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						placeholder="Tu contraseña *" value="" />
				</div>
				<%
					Boolean error = (Boolean) request.getAttribute("error");
					if (error != null) {
						if (error) {
				%>

				<div class="alert alert-danger" role="alert">Usuario o
					contrasena no válidos</div>

				<%
					}
					}
				%>
				<div class="form-group d-flex justify-content-center">
					<input type="submit" class="btnSubmit" value="Login" />
				</div>
				<div class="form-group d-flex justify-content-center">
					<a href="#" class="ForgetPwd">¿Olvidaste la contraseña?</a>
				</div>
			</form>
		</div>
		
	</div>
</div>