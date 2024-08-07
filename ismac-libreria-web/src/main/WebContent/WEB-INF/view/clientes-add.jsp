<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h1>Clientes</h1>
		
		<form action="add" method="post">
			<input type="hidden" id="idCliente" name="idCliente"  value="${clientes.idCliente}"/>
			Cedula
			<input type="text" id="cedula" name="cedula"  value="${clientes.cedula}"/>
			Nombre 
			<input type="text" id="nombre" name="nombre" value="${clientes.nombre}"/>
			Apellido
			<input type="text" id="apellido" name="apellido" value="${clientes.apellido}"/>
			Direccion
			<input type="text" id="direccion" name="direccion" value="${clientes.direccion}"/>
			Telefono
			<input type="text" id="telefono" name="telefono" value="${clientes.telefono}"/>
			Correo
			<input type="email" id="correo" name="correo" value="${clientes.correo}"/>
			
			<button type="submit">Guarda</button>
		</form>
	

</body>
</html>