<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@  page isErrorPage="true" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Editar canción</title>
	</head>
	<body>
	<h2>Editar canción</h2>
		<div class="container">
		<form:form action="/canciones/procesa/editar/${cancion.id}" method="POST" modelAttribute="cancion">
			<input type="hidden" name="_method" value="PUT"/>
			<div>
			<form:label path="titulo"> Título:</form:label>
				<form:input path="titulo" value="${cancion.titulo}" />
				<form:errors path="titulo"/>
			</div>
			<div>
			<form:label path="artista"> Artista:</form:label>
				<form:input path="artista" value="${cancion.artista}" />
				<form:errors path="artista"/>
			</div>
			<div>
			<form:label path="album"> Álbum:</form:label>
				<form:input path="album" value="${cancion.album}" />
				<form:errors path="album"/>
			</div>
			<div>
			<form:label path="genero"> Género:</form:label>
				<form:input path="genero" value="${cancion.genero}" />
				<form:errors path="genero"/>
			</div>
			<div>
			<form:label path="idioma"> Idioma:</form:label>
				<form:input path="idioma" value="${cancion.idioma}" />	
				<form:errors path="idioma"/>
			</div>
			<button type="submit"> Editar </button>
		</form:form>
		</div>
		<a href="/canciones" ><button> Salir </button></a>
	</body>
</html>