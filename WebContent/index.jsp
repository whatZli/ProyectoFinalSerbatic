<%@page import="model.Personas"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<jsp:include page="./html/Encabezado.jsp" />

<%
	Personas p = (Personas) session.getAttribute("usuario");
	if (p != null) {
		if (p.getTipoPersona().equals("CN") || p.getTipoPersona().equals("CP")) {
%>
<jsp:include page="./cliente/Menu.jsp" />
<%
	} else {
			if (p.getTipoPersona().equals("TC")) {
%>
<jsp:include page="./trabajador/MenuCompras.jsp" />
<%
			} else if (p.getTipoPersona().equals("TV")){
%>
<jsp:include page="./trabajador/MenuVentas.jsp" />
<%
			}
%>
<%
			}
	} else {
%>

<jsp:include page="./invitado/Menu.jsp" />

<%
	}
%>

<%
	String container = (String) request.getAttribute("container");
	if (container == null) {
		request.setAttribute("container", "comun/Home.jsp");
	}
%>
<jsp:include page="${container}" />

<jsp:include page="./html/Pie.jsp" />