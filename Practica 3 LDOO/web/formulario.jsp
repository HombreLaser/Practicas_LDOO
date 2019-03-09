<%-- 
    Document   : formulario
    Created on : 9 mar 2019, 10:15:12
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Practica 3</title>
    </head>
    <body>
        <h1>Datos introducidos (No sensibles)</h1>
        <p><b>Nombre:</b>
            <%= request.getParameter("nombre")%>
        </p>
        <p><b>Usuario:</b>
            <%= request.getParameter("nom_usuario")%>
        </p>
        <p><b>Correo electronico:</b>
            <%= request.getParameter("correo")%>
        </p>
        <h1>Gracias por su preferencia!</h>
        <br>
        <img src="https://im0-tub-ru.yandex.net/i?id=8b108a252ef2c10c1c082d702172ba3b&n=13" alt="spasiba'">
    </body>
</html>
