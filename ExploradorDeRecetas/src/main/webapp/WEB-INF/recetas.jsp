<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Explorador de Recetas</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <div class="contenedor">
        <h1>Catálogo de Recetas Disponibles</h1>
        <p>Selecciona una opción para visualizar sus ingredientes:</p>
        <ul>
            <c:forEach var="receta" items="${listaRecetas}">
                <li>
                    <a href="/recetas/${receta}">${receta}</a>
                </li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>