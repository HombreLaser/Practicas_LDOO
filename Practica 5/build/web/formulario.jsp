<%-- 
    Document   : formulario
    Created on : 20 mar 2019, 18:09:34
    Author     : luis
--%>
<%
//Cookies creados  
    Cookie name = new Cookie("nombre", request.getParameter("nombre"));
    Cookie user = new Cookie("nomUsuario", request.getParameter("nomUsuario"));
//Fecha de expiración de nuestros cookies
    name.setMaxAge(60*60*48);
    user.setMaxAge(60*60*48);
//Agregados a la cabecera de respuesta
    response.addCookie(name);
    response.addCookie(user);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Formulario</title>
    </head>
    <body>
        <h1>Datos introducidos (No sensibles)</h1>
        <p><b>Nombre:</b>
            <%= request.getParameter("nombre")%>
        </p>
        <p><b>Usuario:</b>
            <%= request.getParameter("nomUsuario")%>
        </p>
        <p><b>Correo electronico:</b>
            <%= request.getParameter("correo")%>
        </p>
        <h1>Gracias por su preferencia!</h>
        <br>
        <img src="https://im0-tub-ru.yandex.net/i?id=8b108a252ef2c10c1c082d702172ba3b&n=13" alt="spasiba'">
        
        <%
         Cookie cookie = null;
         Cookie[] cookies = null;
         
         // Get an array of Cookies associated with the this domain
         cookies = request.getCookies();
         
         if( cookies != null ) {
            out.println("<h2> Encontrados cookies Nombre y Nombre de usuario</h2>");
            
            for (int i = 0; i < cookies.length; i++) {
               cookie = cookies[i];
               out.print("Nombre : " + cookie.getName() + ",  ");
               out.print("Nombre de usuario: " + cookie.getValue()+" <br/>");
            }
         } else {
            out.println("<h2>No se encontraron cookies</h2>");
         }
        %>
    </body>
</html>
