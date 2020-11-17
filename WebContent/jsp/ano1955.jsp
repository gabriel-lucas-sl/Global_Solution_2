<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/personag.css">
<!--Favicon-->
<link rel="icon" href="../favicon.ico">
<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.css">
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
<title>Linha do Tempo - </title>
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
			<li><a href="../index.jsp">Início</a><li>
			<li><a href="timeline.jsp">Timeline</a><li>	
			<li><a href="#">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>

	<div class="title">
		<h4>PERSONAGENS</h4>
		<p>Esses são os personagens envolvidos nessa linha de tempo</p>
	</div>
	<section class="slide-section">		
		<!-- Swiper -->
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide" id="x">
					<div class="card">
						<div class="sliderText">
							<h3>Slide One</h3>
						</div>
						<div class="content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
							eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<a href="personagem.jsp">Read More</a>
						</div>
					</div>
				</div>
				
				<div class="swiper-slide" id="x">
					<div class="card">
						<div class="sliderText">
							<h3>Slide One</h3>
						</div>
						<div class="content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
							eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<a href="personagem.jsp">Read More</a>
						</div>
					</div>
				</div>
	
				<div class="swiper-slide" id="x">
					<div class="card">
						<div class="sliderText">
							<h3>Slide One</h3>
						</div>
						<div class="content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do 
							eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
							<a href="personagem.jsp">Read More</a>
						</div>
					</div>
				</div>
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
	    effect: 'coverflow',
	    grabCursor: true,
	    centeredSlides: true,
	    slidesPerView: 'auto',
	    coverflowEffect: {
	      rotate: 30,
	      stretch: 0,
	      depth: 200,
	      modifier: 1,
	      slideShadows: true,
	    },
	    pagination: {
	      el: '.swiper-pagination',
	    },
	  });
	  
	  function enviarIndex() {
			location.href = "../index.jsp";
		}
	</script>
</body>
</html>