<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Catálogo de Canciones</title>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
	</head>
	<body>
		<div class= "container">
			<table>
				<tr>
					<th> Título </th>
					<th> Autor </th>
					<th> Detalle </th>
				</tr>
				<c:forEach var="cancion" items="${listaDeCanciones}">
				<tr>
					<td> ${cancion.titulo} </td>
					<td> ${cancion.artista} </td>
					<td> <a href="/canciones/detalle/${cancion.id}"> Detalle </a></td>
				</tr>
				</c:forEach>
			</table>
		</div>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js" integrity="sha384-j1CDi7MgGQ12Z7Qab0qlWQ/Qqz24Gc6BM0thvEMVjHnfYGF0rmFCozFSxQBxwHKO" crossorigin="anonymous"></script>
	</body>
</html>