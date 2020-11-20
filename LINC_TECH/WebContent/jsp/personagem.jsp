<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file = "../../WEB-INF/snippets/imports/libs-head2.jsp" %>
<link rel="stylesheet" href="css/mai.css">
<link rel="stylesheet" href="css/personagem.css">
<!--Favicon-->
<link rel="icon" href="favicon.ico">

<title>Personagem - ${nome}</title>
</head>
<body>
	<nav>
		<div class="movie">
			<button onclick="enviarIndex()" id="logo">
				<img alt="Logo" src="img/logo3.png" class="logo">
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
			<li><a href="curiosidades.jsp">Curiosidades</a><li>
			<li><a href="https://drive.google.com/file/d/1sLPMJyI5DvHHqCR785MV7sXnFu3ZEW4j/view">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>
	<div class="voltar">
		<c:choose>
			<c:when test="${year eq '1955'}">
				<a href="selecionarTimeline?ano=1955&tempo=1955B" id="voltar-a">Voltar</a>
			</c:when>
			<c:when test="${year eq '1985'}">
				<a href="selecionarTimeline?ano=1985&tempo=1985A" id="voltar-a">Voltar</a>
			</c:when>
			<c:when test="${year eq '2015'}">
				<a href="selecionarTimeline?ano=2015&tempo=2015A" id="voltar-a">Voltar</a>
			</c:when>
		</c:choose>		
	</div>
	
	
	<section class="content">
		<div class="box" id="box">
			<div class="image">
				<div class="box-img">
					<div class="img" id="img-personagem">
						<img alt="Imagem do personagem" src="img/${img}">
					</div>
				</div>
			</div>
			<div class="info">
				<div class="superior">
					<h3 id="autor">${nome}</h3>
					<h2 id="titulo">${titulo}</h2>
				</div>
				<div class="inferior">
					<p id="texto">${desc}</p>
				</div>
				<c:choose>
					<c:when test="${year eq '1955'}">
						<div class="botoes">
							<div class="btn btnOriginal">
								<a href="fluxo?ano=1955&tempo=1955B&id=${id}">
									<button onclick="fluxoOriginal()" id="btnOriginal">Fluxo Original</button>
								</a>
							</div>
							<div class="btn btnAlternativo">
								<a href="fluxo?ano=1955&tempo=1955C&id=${id}">
									<button onclick="fluxoAlternativo()" id="btnAlternativo">1955 Alternativo</button>
								</a>		
							</div>
						</div>
					</c:when>
					<c:when test="${year eq '1985'}">
						<div class="botoes">
							<div class="btn btnOriginal">
								<a href="fluxo?ano=1985&tempo=1985A&id=${id}">
									<button onclick="fluxoOriginal()" id="btnOriginal">Fluxo Original</button>
								</a>
							</div>
							<div class="btn btnAlternativo">
								<a href="fluxo?ano=1985&tempo=1985B&id=${id}">
									<button onclick="fluxoAlternativo()" id="btnAlternativo">1985 Alternativo I</button>
								</a>		
							</div>
							<div class="btn btnAlternativo">
								<a href="fluxo?ano=1985&tempo=1985C&id=${id}">
									<button onclick="fluxoAlternativo()" id="btnAlternativo">1985 Alternativo II</button>
								</a>		
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="botoes" style="align-items: end;">
							<p style="text-align: left; color: red;">Esta linha de tempo não possui fluxos alternativos...</p>
						</div>
					</c:otherwise>
				</c:choose>
				
			</div>
		</div>
	</section>
	
	
	<script src="js/menu.js"></script>
	<script src="js/fluxos.js"></script>
	<script>
		function enviarIndex() {
			location.href = "index.jsp";
		}
	</script>
</body>
</html>