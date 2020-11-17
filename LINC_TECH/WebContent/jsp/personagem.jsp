<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/person.css">
<!--Favicon-->
<link rel="icon" href="../favicon.ico">

<title>Personagem - </title>
</head>
<body>
	<nav>
		<div class="movie">
			<button onclick="enviarIndex()" id="logo">
				<h4 id="auxH4">De Volta ao Futuro</h4>
			</button>
		</div>		
		<div class="hamburger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
		<ul class="nav-links" id="auxNav">
			<li><a href="../index.jsp">Início</a><li>
			<li><a href="timeline.jsp">Timeline</a><li>
			<li><a href="#">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>
	<div class="voltar">
		<a href="ano1955.jsp" id="voltar-a">Voltar</a>
	</div>
	
	
	<section class="content">
		<div class="box" id="box">
			<div class="image">
				<div class="box-img">
					<div class="img" id="img-personagem">
						<img alt="Imagem do personagem" src="../img/marty.jpg">
					</div>
				</div>
			</div>
			<div class="info">
				<div class="superior">
					<h3 id="autor">Nome do autor</h3>
					<h2 id="titulo">Título do acontecimento</h2>
				</div>
				<div class="inferior">
					<p id="texto">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
				</div>
				<div class="botoes">
					<div class="btn btnOriginal">
						<button onclick="fluxoOriginal()" id="btnOriginal">Fluxo Original</button>
					</div>
					<div class="btn btnAlternativo">
						<button onclick="fluxoAlternativo()" id="btnAlternativo">Fluxo Alternativo</button>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
	<script src="../js/menu.js"></script>
	<script src="../js/fluxos.js"></script>
	<script>
		function enviarIndex() {
			location.href = "../index.jsp";
		}
	</script>
</body>
</html>