<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Agregar canción</title>
	</head>
	<body>
	<h2>Registra una nueva canción</h2>
		<div class="container">
		<form:form action="/canciones/procesa/agregar" method="POST" modelAttribute="cancion">
			<div>
			<form:label path="titulo"> Título:</form:label>
				<form:input path="titulo"/>
				<form:errors path="titulo"/>
			</div>
			<div>
			<form:label path="artista" for="idArtista">Artista</form:label>
				<select name="id_artista" id="idArtista">
					<c:forEach items="${artistas}" var="artista">
					<option value="${artista.id}"> ${artista.nombre} ${artista.apellido}</option>
					</c:forEach>
				</select>
			
			</div>
			<div>
			<form:label path="album"> Álbum:</form:label>
				<form:input path="album"/>
				<form:errors path="album"/>
			</div>
			<div>
			<form:label path="genero"> Género:</form:label>
				<form:input path="genero"/>
				<form:errors path="genero"/>
			</div>
			<div>
			<form:label path="idioma"> Idioma:</form:label>
				<form:input path="idioma"/>	
				<form:errors path="idioma"/>
			</div>
			<button type="submit"> Agregar </button>
		</form:form>
		</div>
		<a href="/canciones" ><button> Volver a la lista de canciones</button></a>
	</body>
</html>