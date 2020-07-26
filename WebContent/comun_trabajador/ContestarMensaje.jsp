<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<h3>
		Contestar mensaje de
		<c:out
			value="${mensaje.personas.nombre} ${mensaje.personas.apellido1}" />
	</h3>
	<div class="row">
		<div class="col">
			<div class="form-group ">
				<label for="name" class="h4">Asunto</label> <input type="text"
					class="form-control" id="name" placeholder="Enter name"
					value="<c:out value="${mensaje.asunto}"/>" disabled>
			</div>
			<div class="form-group">
				<label for="email" class="h4">Email origen</label> <input
					type="email" class="form-control" id="email" placeholder="Asunto"
					value="<c:out value="${mensaje.personas.mail}"/>" disabled>
			</div>

			<div class="form-group">
				<label for="message" class="h4 ">Mensaje</label>
				<textarea id="message" class="form-control" rows="5"
					placeholder="introduce tu mensaje" disabled><c:out
						value="${mensaje.cuerpo}" /></textarea>
			</div>
		</div>
		<div class="col">
			<form method="post" action="OCContestarMensaje">
			
				<div class="form-group " style="display:none;">
					<label for="id_persona_origen" class="h4">ID persona Origen</label> <input type="text"
						class="form-control" id="email" name="id_persona_origen" value="${mensaje.personas.id}">
				</div>
				<div class="form-group " style="display:none;">
					<label for="email" class="h4">ID persona Origen</label> <input type="text"
						class="form-control" id="email" name="id_mensaje_origen" value="${mensaje.id}">
				</div>
				<div class="form-group ">
					<label for="email" class="h4">Asunto</label> <input type="text"
						class="form-control" id="email" name="asunto" placeholder="Asunto">
				</div>
				<div class="form-group">
					<label for="message" class="h4 ">Mensaje</label>
					<textarea id="message" name="mensaje" class="form-control" rows="5"
						placeholder="Introduce tu mensaje"></textarea>
				</div>
				<input type="submit" class="btn btn-primary"
					value="Responder mensaje">
			</form>
		</div>

	</div>

</div>

