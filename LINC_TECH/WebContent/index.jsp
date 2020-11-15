<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="WEB-INF/snippets/imports/libs-head2.jsp" %>
<!--Favicon-->
<link rel="icon" href="favicon.ico">

<link rel="stylesheet" href="css/main.css">
<link rel="stylesheet" href="css/ind.css">
<title>Back To The Future</title>
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
			<li><a href="#">Personagens</a><li>
			<li><a href="jsp/timeline.jsp">Timeline</a><li>
			<li><a href="#">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>
	
	<section class="content">	
		<h1 class="title">VAMOS VIAJAR NO TEMPO?</h1>
		<div class="botoes">
		   <div class="button">
		       <a href="jsp/timeline.jsp">
		       <span></span>
		       <span></span>
		       <span></span>
		       <span></span>
		       BORA LÁ    
		       </a>
		   </div>
		</div>
	</section>
	<div class="preto"></div>
	<div class="video">
		<video src="img/trailer.mp4" preload="auto" autoplay loop></video>
	</div>

<script src="js/menu.js"></script>
</body>
</html>