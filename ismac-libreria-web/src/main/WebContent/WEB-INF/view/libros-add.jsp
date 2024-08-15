<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>   
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	
	
	<form action="add" method="post">
	<input type="hidden" id="idlibro" name="idlibro" value="${libro.idLibro}"/>
	<br/>
	Titulo
	<input type="text" id="titulo" name="titulo" value="${libro.titulo}">
	<br/>
	editorial
	<input type="text" id="editorial" name="editorial" value="${libro.editorial}">
	<br/>
	numPaginas
	<br/>
	<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
	<br/>
	edicion
	<input type="text" id="edicion" name="edicion" value="${libro.edicion}">
	<br/>
	idioma
	<input type="text" id="idioma" name="idioma" value="${libro.idioma}">
	<br/>
	fechaPublicacion
	<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${fn:substring(libro.fechaPublicacion,0,10)}">
	<br/>
	descripcion
	<input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}">
	<br/>
	tipoPasta
	<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
	<br/>
	ISBN
	<input type="text" id="ISBN" name="ISBN" value="${libro.ISBN}">
	<br/>
	numEjemplares
	<input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}">
	<br/>
	portada
	<input type="text" id="portada" name="portada" value="${libro.portada}">
	<br/>
	presentacion
	<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
	<br/>
	precio
	<input type="number"  id="precio" name="precio" value="${libro.precio}">
	<br/>
	Categoria
	<select id="idCategoria" name="idCategoria">
		<c:forEach var="items" items="${categorias}">
			<option value="${items.idCategoria}" ${items.idCategoria == libro.categoria.idCategoria ? 'selected' : ''}>${items.categoria}</option>
		</c:forEach>		
	</select>
	<br/>
	Autor
	<select id="idAutor" name="idAutor">
		<c:forEach var="items" items="${autor}">
			<option value="${items.idAutor}" ${items.idAutor == libro.autor.idAutor ? 'selected' : ''}>${items.nombre} ${items.apellido}</option>
		</c:forEach>		
	</select>

	
	<button type="submit">Actulizar</button>
	 <button onclick="window.location.href='/ismac-libreria-web/libros/findAll'; return false;">Eliminar</button>
	
	</form>

</body>
</html>