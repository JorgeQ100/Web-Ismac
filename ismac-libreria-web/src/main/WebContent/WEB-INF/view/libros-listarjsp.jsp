<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Libros</h1>
		
	<table>
		<thead>
			<tr>
				<th>idLibro</th>
				<th>titulo</th>
				<th>editorial</th>
				<th>numPaginas</th>
				<th>edicion</th>
				<th>idioma</th>
				<th>fechaPublicacion</th>
				<th>descripcion</th>
				<th>tipoPasta</th>
				<th>iSBN</th>
				<th>numEjemplares</th>
				<th>portada</th>
				<th>presentacion</th>
				<th>precio</th>
				<th>categoria</th>
				<th>autor</th>
				<th>acciones</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="items" items="${libro}">
					<td>${itmes.idLibro}</td>
					<td>${itmes.titulo}</td>
					<td>${itmes.editorial}</td>
					<td>${itmes.numPaginas}</td>
					<td>${itmes.edicion}</td>
					<td>${itmes.idioma}</td>
					<td>${itmes.fechaPublicacion}</td>
					<td>${itmes.descripcion}</td>
					<td>${itmes.presentacion}</td>
					<td>${itmes.ISBN}</td>
					<td>${itmes.numEjemplares}</td>
					<td>${itmes.portada}</td>
					<td>${itmes.presentacion}</td>
					<td>${itmes.precio}</td>
					<td>${itmes.categoria}</ztd>
					<td>${itmes.autor}</td>
					<td>
						<button>Actualizar</button>
						<button>Borrar</button>
					</td>
			</c:forEach>
		</tbody>
		
	</table>
	
	
</body>
</html>