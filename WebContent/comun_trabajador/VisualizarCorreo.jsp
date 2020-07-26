<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container">

	<h1>Visualizar correo entrante</h1>

	<div class="row">
		<div class="col">
			<table class="table table-hover" style="text-align: center;">
				<thead>
					<tr>
						<th scope="col">Leído</th>
						<th scope="col">Contestado</th>
<!-- 						<th scope="col">Fecha</th> -->
						<th scope="col">Origen</th>
						<th scope="col">Asunto</th>
						<th scope="col" colspan="3" class="m-auto"
							style="text-align: center; width: 30%;">Acciones</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lista_mensajes}" var="mensaje">
						<tr>
							<!-- 						Leido -->
							<c:if test="${mensaje.leido}">
								<td><p>&#x2705;</p></td>
							</c:if>
							<c:if test="${!mensaje.leido}">
								<td><p>&#x274E;</p></td>
							</c:if>
							<!-- 						Contestado -->
							<c:if test="${mensaje.contestado}">
								<td><p>&#x2705;</p></td>
							</c:if>
							<c:if test="${!mensaje.contestado}">
								<td><p>&#x274E;</p></td>
							</c:if>
<%-- 							<td><c:out value="${mensaje.fechaEnvio}" /></td> --%>
							<td><c:out value="${mensaje.personas.mail}" /></td>
							<td><c:out value="${mensaje.asunto }" /></td>
							<td><a
								href="OCVerMensaje?id_mensaje=<c:out value="${mensaje.id}"/>"
								class="btn btn-primary" value="ver">Ver mensaje</a></td>
							<td><a
								href="OCContestarMensaje?id_mensaje=<c:out value="${mensaje.id}"/>"
								class="btn btn-warning" value="contestar">Contestar mensaje</a></td>
							<td><a
								href="OCBorrarMensaje?id_mensaje=<c:out value="${mensaje.id}"/>"
								class="btn btn-danger" value="borrar">Borrar mensaje</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>