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
		
		<form action="del" method="get">
			<input type="hidden" id="idCliente" name="idCliente"  value="${clientes.idCliente}"/>
			<strong>¿Desea eliminar el dato?</strong>
			<button type="submit">Guarda</button>
			
		</form>
</body>
</html>