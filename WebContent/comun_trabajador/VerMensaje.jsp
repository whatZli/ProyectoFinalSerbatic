<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
<h3>Leer mensaje de <c:out value="${mensaje.personas.nombre} ${mensaje.personas.apellido1}"/></h3>
	<div class="row">
		<div class="form-group col-sm-6">
			<label for="name" class="h4">Asunto</label> <input type="text"
				class="form-control" id="name" placeholder="Enter name" value="<c:out value="${mensaje.asunto}"/>" disabled>
		</div>
		<div class="form-group col-sm-6">
			<label for="email" class="h4">Email origen</label> <input type="email"
				class="form-control" id="email" placeholder="Enter email" value="<c:out value="${mensaje.personas.mail}"/>" disabled>
		</div>
	</div>
	<div class="form-group">
		<label for="message" class="h4 ">Mensaje</label> 
		<textarea id="message" class="form-control" rows="5"
			placeholder="Enter your message" disabled><c:out value="${mensaje.cuerpo}"/></textarea>
	</div>
</div>