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
				<p> Artista: ${cancion.artista.nombre} ${cancion.artista.apellido}</p>
				<p> Album: ${cancion.album}</p>
				<p> Género: ${cancion.genero}</p>
				<p> Idioma: ${cancion.idioma}</p>
			</div>
			<div>
				<div>
				<form action="/canciones/formulario/editar/${cancion.id}" method="GET" ><button> Editar canción</button></form>
				<form action="/canciones/eliminar/${cancion.id}" method="POST" >
				<input type="hidden" name="_method" value="DELETE" >
				<button> Elimnar canción</button>
				</form>
				</div>
				<a href="/canciones" ><button> Volver a la lista de canciones</button></a>
			</div>
		</div>
	</body>
</html>