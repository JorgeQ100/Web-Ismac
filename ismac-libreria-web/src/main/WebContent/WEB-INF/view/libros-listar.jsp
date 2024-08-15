<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Libros</title>
</head>
<body>
    <h1>Libros</h1>
    <button onclick="window.location.href='/ismac-libreria-web/libros/findOne?idLibro=0&opcion=1'; return false;">Agregar</button>
    <table>
        <thead>
            <tr>
                <th>idLibro</th>
                <th>T�tulo</th>
                <th>Editorial</th>
                <th>N�mero de P�ginas</th>
                <th>Edici�n</th>
                <th>Idioma</th>
                <th>Fecha de Publicaci�n</th>
                <th>Descripci�n</th>
                <th>Tipo de Pasta</th> 
                <th>ISBN</th>
                <th>N�mero de Ejemplares</th>
                <th>Portada</th>
                <th>Presentaci�n</th>
                <th>Precio</th>
                <th>Categor�a</th>
                <th>Autor</th>
                <th>Acciones</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="items" items="${libro}">
                <tr> 
                    <td>${items.idLibro}</td>
                    <td>${items.titulo}</td>
                    <td>${items.editorial}</td>
                    <td>${items.numPaginas}</td>
                    <td>${items.edicion}</td>
                    <td>${items.idioma}</td>
                    <td>${fn:substring(items.fechaPublicacion,0,10)}</td>
                    <td>${items.descripcion}</td>
                    <td>${items.tipoPasta}</td> 
                    <td>${items.ISBN}</td>
                    <td>${items.numEjemplares}</td>
                    <td>
                        <img alt="Portada de libro" width="200" height="200" src="${pageContext.request.contextPath}/resources/img/${items.portada}">
                    </td>
                    <td>${items.presentacion}</td>
                    <td>${items.precio}</td>
                    <td>${items.categoria.categoria}</td>
                    <td>${items.autor.nombre} ${items.autor.apellido}</td>
                    <td>
                        <button onclick="window.location.href='/ismac-libreria-web/libros/findOne?idLibro=${items.idLibro}&opcion=1'; return false;">Actualizar</button>
                        <button onclick="window.location.href='/ismac-libreria-web/libros/findOne?idLibro=${items.idLibro}&opcion=2'; return false;">Eliminar</button>
                    </td>
                </tr> 
            </c:forEach>
        </tbody>
    </table>
</body>
</html>