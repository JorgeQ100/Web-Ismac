<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>Restaurante Delicioso</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f8f9fa;
        }
        header {
            background-color: #343a40;
            color: #fff;
            padding: 1rem;
            text-align: center;
        }
        nav {
            background-color: #007bff;
            overflow: hidden;
        }
        nav a {
            float: left;
            display: block;
            color: #fff;
            text-align: center;
            padding: 1rem;
            text-decoration: none;
        }
        nav a:hover {
            background-color: #0056b3;
        }
        .container {
            padding: 2rem;
        }
        footer {
            background-color: #343a40;
            color: #fff;
            text-align: center;
            padding: 1rem;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        
        button {
            background-color: #4CAF50; /* Verde */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 20px 2px;
            cursor: pointer;
            border-radius: 12px;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #45a049; /* Verde más oscuro */
        }
        
    </style>
</head>
<body>

	  <h1>Bienvenido a Restaurante Delicioso</h1>
        <p>La mejor experiencia culinaria</p>
    </header>

    <nav>
        <a href="#">Inicio</a>
        <a href="#">Menú</a>
        <a href="#">Reservas</a>
        <a href="#">Contacto</a>
    </nav>

    <div class="container">
        <h2>Nuestra Historia</h2>
        <p>
            En Restaurante Delicioso, nos enorgullecemos de ofrecer una experiencia gastronómica excepcional. Desde nuestros humildes comienzos,
            hemos crecido hasta convertirnos en un referente de la buena comida. Nuestro equipo de chefs se dedica a crear platos únicos que
            combinan sabores tradicionales con un toque moderno.
        </p>
        <h2>Nuestros Platos</h2>
        <p>
            Descubre nuestro variado menú, que incluye una amplia selección de platos preparados con los ingredientes más frescos y de la mejor calidad.
            Desde aperitivos hasta postres, cada plato es una obra de arte culinaria.
        </p>
    </div>
    
	<button onclick="window.location.href='/ismac-libreria-web/clientes/findAll'; return false">Ir</button>


    <footer>
        <p>&copy; 2024 Restaurante Delicioso. Todos los derechos reservados.</p>
    </footer>
	
</body>
</html>
