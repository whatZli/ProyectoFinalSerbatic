<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container mt-4 mb-4 ">

	<h1>Enviar mensaje a trabajador</h1>

	<div class="form-group">


		<form method="post" action="OCEnviarCorreoTrabajador">
			<label for="exampleFormControlSelect1">Trabajador destino:</label> <select
				name="id_trabajador" class="form-control"
				id="exampleFormControlSelect1">
				<c:forEach items="${personasTrabajadores}" var="personaTrabajador">
					<option value="<c:out value="${personaTrabajador.id}" />"><c:out
							value="${personaTrabajador.nombre}" />
						<c:out value="${personaTrabajador.apellido1}" />
						<c:out value="${personaTrabajador.apellido2}" /></option>
				</c:forEach>
			</select>
			<div class="row">
				<div class="form-group col-sm-6">
					<label for="name" class="h4">Asunto</label> <input type="text"
						class="form-control" id="name" name="asunto"
						placeholder="Enter name">
				</div>
			</div>
			<div class="form-group">
				<label for="message" class="h4 ">Mensaje</label>
				<textarea id="message" name="mensaje" class="form-control" rows="5"
					placeholder="Enter your message"></textarea>
			</div>
			<input type="submit" class="btn btn-primary mt-2 "
				value="Enviar mensaje"></input>
		</form>
	</div>

</div>