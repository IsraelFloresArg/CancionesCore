<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle artista</title>
	</head>
	<body>
		<div class="container">
			<div>
				<h2> Informacion de ${artista.nombre} ${artista.apellido}</h2>
				<p> Nombre: ${artista.nombre}</p>
				<p> Apellido: ${artista.apellido}</p>
				<p> Biografía: ${artista.biografia}</p>
				<p> Canciones:</p>
				<ul>
				 <c:forEach var="cancion" items="${listaDeCanciones}">
				 	<li> ${cancion}</li>
				 </c:forEach>
				</ul>
			</div>
			<div>
				<a href="/artistas" ><button> Volver a la lista de artistas</button></a>
			</div>
		</div>
	</body>
</html>