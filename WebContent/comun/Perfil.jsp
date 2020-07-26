<%@page import="model.Personas"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	Personas p = (Personas) request.getSession().getAttribute("usuario");
%>

<hr>
<div class="container bootstrap snippet mb-5">
	<div class="row">
		<div class="col-sm-10">
			<h1>
				Perfil de
				<%
				out.println(p.getNombre() + " " + p.getApellido1() + " " + p.getApellido2());
			%>
			</h1>
		</div>
	</div>
	<div class="row d-flex justify-content-center">

		<!--/col-3-->
		<div class="col-sm-9 "> 

			<div class="tab-content ">
				<div class="tab-pane active" id="home">
					<hr>
					<form class="form" action="##" method="post" id="registrationForm">
						<div class="form-group">

							<div class="col-xs-6">
								<label for="first_name"><h4>Nombre</h4></label> <input
									type="text" class="form-control" name="first_name"
									id="first_name" placeholder="first name" title=""
									value="<%out.println(p.getNombre());%>">
							</div>
						</div>
						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>Apellido 1</h4></label> <input
									type="text" class="form-control" name="last_name"
									id="last_name" placeholder="last name"
									title="enter your last name if any."
									value="<%out.println(p.getApellido1());%>">
							</div>
						</div>

						<div class="form-group">

							<div class="col-xs-6">
								<label for="last_name"><h4>Apellido 2</h4></label> <input
									type="text" class="form-control" name="last_name"
									id="last_name" placeholder="last name"
									title="enter your last name if any."
									value="<%out.println(p.getApellido2());%>">
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-6">
								<label for="sexo"><h4>Sexo</h4></label> <select
									class="form-control" name="sexo" id="sexo">
									<option value="<%out.println(p.getSexo());%>" selected>
										<%
											out.println(p.getSexo());
										%>
									</option>
									<option value="H">Hombre</option>
									<option value="M">Mujer</option>
								</select>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">
								<label for="email"><h4>Email</h4></label> <input type="email"
									class="form-control" name="email" id="email"
									placeholder="you@email.com" title="enter your email."
									value="<%out.println(p.getMail());%>">
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">
								<label for="email"><h4>Fecha alta</h4></label> <input
									type="email" class="form-control" name="email" id="email"
									placeholder="you@email.com" title="enter your email."
									value="<%out.println(p.getFechaAlta());%>" disabled>
							</div>
						</div>
						<div class="form-group">
							<div class="col-xs-6">
								<label for="email"><h4>Usuario</h4></label> <input
									type="email" class="form-control" name="email" id="email"
									placeholder="you@email.com" title="enter your email."
									value="<%out.println(p.getDni());%>" disabled>
							</div>
						</div>
						<br> <br>
						<div class="form-group ">
							<div class="col-xs-6 ">
								<br>
								<button class="btn btn-lg btn-success" type="submit">
									<i class="glyphicon glyphicon-ok-sign"></i> Guardar perfil
								</button>
								<a class="btn btn-lg" href="Home">Cancelar y salir</a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

