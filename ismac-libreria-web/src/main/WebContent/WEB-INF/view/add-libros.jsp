<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Libros</h1>
	
	<form action="add" method="post">
	    <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}"/>
	    Titulo
	    <input type="text" id="titulo" name="titulo" value="${libro.titulo}"/>
	    Editorial
	    <input type="text" id="editorial" name="editorial" value="${libro.editorial}"/>
	    NumPaginas
	    <input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}"/>
	    Edicion
	    <input type="text" id="edicion" name="edicion" value="${libro.edicion}"/>
	    Idioma
	    <input type="text" id="idioma" name="idioma" value="${libro.idioma}"/>
	    Fecha de publicacion
	    <input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}"/>
	    Descripcion
	    <input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}"/>
	    Tipo Pasta
	    <input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}"/>
	    ISBN
	    <input type="text" id="ISBN" name="ISBN" value="${libro.ISBN}"/>
	    NumEjemplares
	    <input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}"/>
	    Portada
	    <input type="text" id="portada" name="portada" value="${libro.portada}"/>
	    Presentacion
	    <input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}"/>
	    Precio
	    <input type="number" id="precio" name="precio" value="${libro.precio}"/>
	    Id Libro
	    <input type="hidden" id="id_categoria" name="id_categoria" value="${libro.id_categoria}"/>
	    Id Autor
	    <input type="hidden" id="id_autor" name="id_autor" value="${libro.id_autor}"/>
</form>

	

</body>
</html>