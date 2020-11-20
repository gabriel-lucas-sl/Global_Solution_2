<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/mai.css">
<link rel="stylesheet" href="css/timelin.css">
<!--Favicon-->
<link rel="icon" href="favicon.ico">
<title>Timeline</title>
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
		<ul class="nav-links">
			<li><a href="index.jsp">Início</a><li>
			<li><a href="timeline.jsp">Timeline</a><li>	
			<li><a href="jsp/curiosidades.jsp">Curiosidades</a><li>	
			<li><a href="https://drive.google.com/file/d/1sLPMJyI5DvHHqCR785MV7sXnFu3ZEW4j/view">Machine Learning</a><li>
			<li><a href="https://drive.google.com/drive/u/4/folders/1e7SH9DNrcd6pmnrWiSccOAo0kvEYbU9V">Diagrama de classes</a><li>
		</ul>
	</nav>
	
	<section class="content">
		<div class="title">
			<h4>LINHA DO TEMPO</h4>
			<p>Selecione uma linha do tempo abaixo e descubra seus acontecimentos</p>
		</div>
		
		<div class="timeline">
			<%@ include file = "WEB-INF/snippets/timeline/timeline.html" %>
		</div>
		
	</section>
	
	<section class="waves">
        <div class="wave wave1"></div>
        <div class="wave wave2"></div>
        <div class="wave wave3"></div>
        <div class="wave wave4"></div>
    </section>
		
	<script src="js/menu.js"></script>
	<script type="text/javascript">
		function enviarIndex() {
			location.href = "index.jsp";
		}
	</script>
</body>
</html>