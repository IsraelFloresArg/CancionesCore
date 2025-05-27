<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Detalle de canción</title>
	</head>
	<body>
		<div class="container">
			<div>
				<h2> Detalles de la cancion: ${cancion.titulo}</h2>
				<p> Artista: ${cancion.artista}</p>
				<p> Album: ${cancion.album}</p>
				<p> Género: ${cancion.genero}</p>
				<p> Idioma: ${cancion.idioma}</p>
			</div>
			<div>
				<a href="/canciones/formulario/editar/{idCancion}" ><button> Editar canción</button></a>
				<a href="/canciones" ><button> Volver a la lista de canciones</button></a>
			</div>
		</div>
	</body>
</html>