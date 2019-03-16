<%@page contentType = "text/html;charset = UTF-8" language = "java" %>
<%@page isELIgnored = "false" %>
<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario con Spring MVC</title>
</head>
<body>
	<h2>Informacion introducida por el cliente</h2>
	<table>
		<tr>
			<td>Nombre</td>
			<td>${nombre}</td>
		</tr>
		<tr>
			<td>Correo</td>
			<td>${correo}</td>
		</tr>
		<tr>
			<td>Direccion</td>
			<td>${direccion}</td>
		</tr>
		<tr>
			<td>Edad</td>
			<td>${edad}</td>
		</tr>
	</table>
</body>
</html>