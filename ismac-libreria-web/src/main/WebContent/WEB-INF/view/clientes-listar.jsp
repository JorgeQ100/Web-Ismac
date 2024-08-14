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

	<h1>Clientes</h1>
	
	<button onclick="window.location.href='/ismac-libreria-web/clientes/findOne?opcion=1; return false?">
	Agregar
    </button>
	
	<table>
		<thead>
			<tr>
				<th>idCliente</th>
				<th>Cedula</th>
				<th>Nombre</th>
				<th>Apellido</th>
				<th>Direccion</th>
				<th>Telefono</th>
				<th>Correo</th>
			</tr>
		</thead>
		
		<tbody>
			<c:forEach var="items" items="${clientes}">
				<tr>
					<td>${items.idCliente}</td>
					<td>${items.cedula}</td>
					<td>${items.nombre}</td>
					<td>${items.apellido}</td>
					<td>${items.direccion}</td>
					<td>${items.telefono}</td>
					<td>${items.correo}</td>
					<td>
					 	<button onclick="window.location.href='/ismac-libreria-web/clientes/findOne?idCliente=${items.idCliente}&opcion=1'; return false;">
					 		Actualizar
					 	</button>
					 	
					 	
					 	
					 	<button onclick="window.location.href='/ismac-libreria-web/clientes/findOne?idCliente=${items.idCliente}&opcion=2'; return false;">
					 		Eliminar
					 	</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	
	
</body>
</html>