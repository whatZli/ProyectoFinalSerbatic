<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="container">
	<h1>
		Ver logs del cliente "
		<c:out value="${dni_cliente}" />"
	</h1>

	<c:choose>
		<c:when test="${empty lineasLog}">
			<h3>
				El usuario "
				<c:out value="${dni_cliente}" />
				" no ha generado ningún log
			</h3>
		</c:when>
		<c:otherwise>
			<table class="table table-striped">
				<thead>
				</thead>
				<tbody>
					<c:forEach items="${lineasLog}" var="lineaLog">
						<tr>
							<td><c:out value="${lineaLog}" /></td>
						</tr>
					</c:forEach>


				</tbody>
			</table>

		</c:otherwise>
	</c:choose>



	<a href="ADBuscarUsuarioLog" class="btn btn-primary mt-2 ">Volver
		atrás</a>

</div>
