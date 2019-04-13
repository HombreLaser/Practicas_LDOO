<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2030 00:00:00 GMT">
<title>Bienvenido a Practica 8</title>
<link href="static/css/bootstrap/min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">
<!-- [if It IE 9]>
	<script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	<script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
	<![endif]-->
</head>
<body>
<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">LDOO</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">Registrarse</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	<c:choose>
	<c:when test="$(mode=='MODE_HOME')">
	<div class="container" id="homediv">
		<div class="jumbotron text-center">
			<h1>Bienvenidos a la práctica 8 LDOO</h1>
			<h3>Martes de 6 a 8 p.m.</h3>
		</div>
	</div>
	</c:when>
	
	<c:when test="${mode=='MODE_REGISTER' }">
	<div class="container text-center">
		<h3>Registrarse</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="/save-user">
			<input type="hidden" name="id" value="${user.id }" />
			<div class="form-group">
				<label class="control-label col-md-3">Nombre de usuario:</label>
				
					<input type="text" class="form-control" name="username"
								value="${user.username }" />
				</div>
			<div class="form-group">
				<label class="control-label col-md-3">Nombre:</label>
					<input type="text" class="form-control" name="name"
						value="${user.name }" />
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Edad:</label>
					<input type="text" class="form-control" name="age"
						value="${user.age }" />
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Contraseña:</label>

					<input type="password" class="form-control" name="password"
						value="${user.password }" />
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Email:</label>
					<input type="text" class="form-control" name="email"
								value="${user.email }" />
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Telefono:</label>
					<div class="col-md-7">
						<input type="text" class="form-control" name="phone"
							value="${user.phone }" />
					</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Fecha de Nacimiento:</label>
					<div class="col-md-7">
						<input type="date" class="form-control" name="birthday"
							value="${user.birthday }"/>
					</div>
			</div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
			<img alt="akko_icon" src="https://chpic.su/_data/stickers/LWAStickers/LWAStickers_001.png">
	</form>
	</div>
	</c:when>
	
	<c:when test="${mode=='MODE_LOGIN' }">
		<div class="container text-center">
		<h3>Inicio de sesión</h3>
		<hr>
		<form class="form-horizontal" method="POST" action="/login-user">
			<c:if test="${not empty error} ">
				<div class="aler alert-danger"></div>
					<c:out value="${error }"></c:out>
			</c:if>
			<div class="form-group">
				<label class="control-label col-md-3">Nombre de usuario:</label>
				<div class="form-group">
					<input type="text" class="form-control" name="username"
								value="${user.username }" />
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-md-3">Contraseña:</label>
				<div class="form-group">
					<input type="password" class="form-control" name="password"
						value="${user.password }" />
				</div>
			</div>
			<div class="form-group">
				<input type="submit" class="btn btn-primary" value="Login">
			</div>
		</form>
		</div>
	</c:when>
	
	</c:choose>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="static/js/jquery-1.11.1.min.js"></script>
<script src="static/js/bootstrap.min.js"></script>
</body>
</html>