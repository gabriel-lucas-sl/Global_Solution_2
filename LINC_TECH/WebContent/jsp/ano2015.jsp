<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../../WEB-INF/snippets/imports/libs-head2.jsp"%>
<link rel="stylesheet" href="css/mai.css">
<link rel="stylesheet" href="css/personage.css">
<!--Favicon-->
<link rel="icon" href="favicon.ico">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<title>Linha do Tempo -</title>
</head>
<body>
	<div class="bandeiras">
		<a href="language.jsp?lingua=pt-br"><img src="./img/brazil.png"></a>
		<a href="language.jsp?lingua=en"><img src="./img/united.png"></a>
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
	<div class="voltar">
		<a href="timeline.jsp" id="voltar-a"><f:message key="voltar" /></a>
	</div>
	<div class="title">
		<h4>
			<f:message key="personagens" />
		</h4>
		<p>
			<f:message key="personagens.envolvidos" />
		</p>
	</div>
	<section class="slide-section">
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<c:choose>
					<c:when test="${not empty personagensPassado}">
						<c:forEach var="p" items="${personagensPassado}">
							<div class="swiper-slide" id="x">
								<div class="card">
									<div class="sliderText">
										<div class="black"></div>
										<img alt="Imagem do personagem"
											src="img/${p.getPersonagem().img}">
										<h3>${p.getPersonagem().nome}</h3>
									</div>
									<div class="content">
										<p>${p.getPersonagem().descricao}</p>
										<a
											href="selecionarPersonagem?ano=1955&tempo=1955B&id=${p.getPersonagem().id}"><f:message
												key="leia.mais" /></a>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<div class="">
							<h1 style="text-align: center; color: red;">LISTA VAZIA</h1>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>

	</section>

	<!-- Swiper JS -->
	<script src="https://unpkg.com/swiper/swiper-bundle.js"></script>
	<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
	<script src="../js/menu.js"></script>
	<!-- Initialize Swiper -->
	<script>
		var swiper = new Swiper('.swiper-container', {
			effect : 'coverflow',
			grabCursor : true,
			centeredSlides : true,
			slidesPerView : 'auto',
			coverflowEffect : {
				rotate : 30,
				stretch : 0,
				depth : 200,
				modifier : 1,
				slideShadows : true,
			},
			pagination : {
				el : '.swiper-pagination',
			},
		});

		function enviarIndex() {
			location.href = "index.jsp";
		}
	</script>
</body>
</html>