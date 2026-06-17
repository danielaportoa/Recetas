# Explorador de Recetas - Aplicación Web con Spring Boot (MVC)

Un sistema de gestión de recetas desarrollado en Java utilizando **Spring Tool Suite (STS)**. 
La aplicación implementa la arquitectura de software **MVC (Modelo-Vista-Controlador)** 
para procesar solicitudes HTTP de tipo `GET`, renderizar interfaces dinámicas mediante **JSP (JavaServer Pages)** 
y **JSTL (JavaServer Pages Standard Tag Library)**, y aplicar estilos visuales mediante hojas de estilo CSS estáticas.

## Objetivos del Proyecto
* **Implementar el Patrón Arquitectónico MVC:**  
* **Vincular Modelos a la Vista:**  
* **Dominar Sintaxis JSP y JSTL:**
* **Inyectar Contenido Estático:** 

---

## 📂 Arquitectura y Árbol de Directorios

Para que el servidor integrado Apache Tomcat y el compilador de vistas procesen correctamente el proyecto, 
la estructura de carpetas y paquetes dentro de STS se organiza de la siguiente manera:

```text
ExploradorDeRecetas/
├── src/main/java/
│   ├── com.amancay/
│   │   └── ExploradorDeRecetasApplication.java    
│   └── com.amancay.controladores/
│       └── ControladorRecetas.java                 
└── src/main/resources/
    ├── application.properties                     
    └── static/
        └── estilos.css                             
└── src/main/webapp/
    └── WEB-INF/
        ├── recetas.jsp                             
        └── detalleReceta.jsp                    
