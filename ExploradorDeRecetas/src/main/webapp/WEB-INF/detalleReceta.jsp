<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Receta</title>
    <link rel="stylesheet" href="/style.css">
</head>
<body>
    <div class="contenedor">
        <c:choose>
            <c:when test="${not empty ingredientes}">
                <h1>Receta: ${nombreReceta}</h1>
                <h3>Ingredientes requeridos:</h3>
                <ul>
                    <c:forEach var="ingrediente" items="${ingredientes}">
                        <li>${ingrediente}</li>
                    </c:forEach>
                </ul>
            </c:when>
            <c:otherwise>
                <div class="error">
                    <p>La receta no se encuentra en nuestra lista.</p>
                </div>
            </c:otherwise>
        </c:choose>
        <br>
        <a href="/recetas">Volver al catálogo</a>
    </div>
</body>
</html>