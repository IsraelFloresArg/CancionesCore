<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar Artista</title>
	</head>
	<body>
	<h2>Registra un nuevo artista</h2>
		<div class="container">
		<form:form action="/artista/procesa/agregar" method="POST" modelAttribute="artista">
			<div>
			<form:label path="nombre"> Nombre:</form:label>
				<form:input path="nombre"/>
				<form:errors path="nombre"/>
			</div>
			<div>
			<form:label path="apellido"> Apellido:</form:label>
				<form:input path="apellido"/>
				<form:errors path="apellido"/>
			</div>
			<div>
			<form:label path="biografia"> Biografía:</form:label>
				<form:input path="biografia"/>
				<form:errors path="biografia"/>
			</div>
			<button type="submit"> Agregar </button>
		</form:form>
		</div>
		<a href="/artistas" ><button> Volver a la lista de artistas</button></a>
	</body>
</html>