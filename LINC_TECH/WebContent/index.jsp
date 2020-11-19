<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="WEB-INF/snippets/imports/libs-head2.jsp" %>
<!--Favicon-->
<link rel="icon" href="favicon.ico">

<link rel="stylesheet" href="css/mai.css">
<link rel="stylesheet" href="css/inde.css">
<title>Back To The Future</title>
</head>
<body onpageshow="message()">
	
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
			<li><a href="jsp/timeline.jsp">Timeline</a><li>
			<li><a href="#">Curiosidades</a><li>
			<li><a href="https://drive.google.com/file/d/1sLPMJyI5DvHHqCR785MV7sXnFu3ZEW4j/view">Machine Learning</a><li>
			<li><a href="https://drive.google.com/drive/u/4/folders/1e7SH9DNrcd6pmnrWiSccOAo0kvEYbU9V">Diagrama de classes</a><li>
		</ul>
	</nav>
	
	<section class="content">	
		<h1 class="title">VAMOS VIAJAR NO TEMPO?</h1>
		<div class="botoes">
		   <div class="button">
		       <a href="timeline.jsp">
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
<script type="text/javascript">
	function message() {
		alert("Olá, amigo! \n"
				+ "Para melhorar a sua experiência utilizando o nosso site é importante que você permita a utilização de som e vídeo da nossa página web, caso já não tenha feito. Tenha uma ótima aventura!")
	}
</script>
</body>
</html>