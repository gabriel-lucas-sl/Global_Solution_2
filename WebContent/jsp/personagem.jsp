<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/per.css">
<!--Favicon-->
<link rel="icon" href="../favicon.ico">
<title>Personagem - </title>
</head>
<body>
	<nav>
		<div class="movie">
			<button onclick="enviarIndex()" id="logo">
				<h4>De Volta ao Futuro</h4>
			</button>
		</div>		
		<div class="hamburger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
		<ul class="nav-links">
			<li><a href="index.jsp">Início</a><li>
			<li><a href="jsp/timeline.jsp">Timeline</a><li>
			<li><a href="#">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>
	<div class="voltar">
		<a href="ano1955.jsp">Voltar</a>
	</div>
	
	<script src="../js/menu.js"></script>
	<script>
		function enviarIndex() {
			location.href = "../index.jsp";
		}
	</script>
</body>
</html>