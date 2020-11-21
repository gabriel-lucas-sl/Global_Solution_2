<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="WEB-INF/snippets/imports/libs-head2.jsp"%>
<!--Favicon-->
<link rel="icon" href="favicon.ico">

<link rel="stylesheet" href="css/mai.css">
<link rel="stylesheet" href="css/inde.css">
<title><f:message key="titulo" /></title>
</head>
<body onpageshow="message()">

	<div class="bandeiras">
		<a href="language.jsp?lingua=pt-br"><img src="./img/brazil.png"></a>
		<a href="language.jsp?lingua=en-us"><img src="./img/united.png"></a>
		<a href="language.jsp?lingua=es"><img src="./img/espanha.png"></a>
	</div>

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
			<li><a href="index.jsp"> <f:message key="menu.inicio" /></a>
			<li>
			<li><a href="jsp/timeline.jsp"><f:message
						key="menu.timeline" /></a>
			<li>
			<li><a href="jsp/curiosidades.jsp"><f:message
						key="menu.curiosidades" /></a>
			<li>
			<li><a
				href="https://drive.google.com/file/d/1sLPMJyI5DvHHqCR785MV7sXnFu3ZEW4j/view">
					<f:message key="menu.machine" />
			</a>
			<li>
			<li><a
				href="https://drive.google.com/drive/u/4/folders/1e7SH9DNrcd6pmnrWiSccOAo0kvEYbU9V">
					<f:message key="menu.diagrama" />
			</a>
			<li>
		</ul>
	</nav>

	<section class="content">
		<h1 class="title">
			<f:message key="titulo.sec" />
		</h1>
		<div class="botoes">
			<div class="button">
				<a href="timeline.jsp"> <span></span> <span></span> <span></span>
					<span></span> <f:message key="msg.sec" />
				</a>
			</div>
		</div>
	</section>
	<div class="preto"></div>
	<div class="video">
		<video src="img/trailer.mp4" preload="auto" autoplay loop></video>
	</div>

	<script src="js/menu.js"></script>
	<f:message key="teste" />
	<script type="text/javascript">
		function message() {
			alert(<f:message key = "alert.inicio"/>);

		}
	</script>

</body>
</html>