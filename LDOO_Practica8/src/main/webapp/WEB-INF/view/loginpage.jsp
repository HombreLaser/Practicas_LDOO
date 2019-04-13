<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="fcfm.doo.model.User" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Información de Usuario</title>
</head>
<body>
<h1>Datos del Usuario y de Sesión</h1>
	<p><b>ID de Usuario</b>
		<%
			User user =new User();
			out.print(user.getId()); 
		%>
	</p>
	<p><b>Nombre de Usuario:</b>
        <% 
        	out.print(user.getUsername());
        %>
    </p>
    <p><b>Nombre:</b>
    	<% 
    		out.print(user.getName()); 
    	%>
    </p>
    <p><b>Email:</b>
    	<%
    		out.print(user.getEmail());
    	%>
    </p>
    <p><b>Teléfono:</b>
    	<%
    		out.print(user.getPhone());
    	%>
    </p>
    <p><b>Edad:</b>
    	<%
    		out.print(user.getAge());
    	%>
    </p>
    <p><b>Fecha de nacimiento:</b>
    	<%
    		out.print(user.getBirthday());
    	%>
    </p>    
</body>
</html>