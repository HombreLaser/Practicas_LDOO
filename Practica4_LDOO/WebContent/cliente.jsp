<%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Formulario con Spring MVC</title>
</head>
<body>
	<h2>Informacion de cliente</h2>
	<form:form method = "POST" action = "/Practica4/addCliente">
		<table>
			<tr>
				<td><form:label path = "nombre">Nombre</form:label></td>
				<td><form:input path = "nombre" /></td>
			</tr>
			<tr>
				<td><form:label path = "correo">Correo</form:label></td>
				<td><form:input path="correo"/></td>
			</tr>
			<tr>
				<td><form:label path="direccion">Direccion</form:label></td>
				<td><form:input path="direccion"/></td>
			</tr>
			<tr>
				<td><form:label path="edad">Edad</form:label></td>
				<td><form:input path="edad"/></td>
			</tr>
			<tr>
				<td colspan = "2">
					<input type = "submit" value = "Submit"/>
				</td>
			</tr>
		</table>
	</form:form>
</body>
</html>