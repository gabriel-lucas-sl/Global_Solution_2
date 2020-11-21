<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../WEB-INF/snippets/imports/libs-head.jsp"%>
<!--Favicon-->
<link rel="icon" href="../favicon.ico">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/mai.css">
<link rel="stylesheet" href="../css/curiosi.css">
<title><f:message key="menu.curiosidades" /></title>
</head>
<body>
<div class="bandeiras">
		<a href="../language.jsp?lingua=pt-br"><img src="../img/brazil.png"></a>
		<a href="../language.jsp?lingua=en"><img src="../img/united.png"></a>
		<a href="../language.jsp?lingua=es"><img src="../img/espanha.png"></a>
	</div>

	<nav id="myNav">
		<div class="movie">
			<button onclick="enviarIndex()" id="logo">
				<img alt="Logo" src="../img/logo3.png" class="logo">
			</button>
		</div>
		<div class="hamburger">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
		<ul class="nav-links2">
			<li><a href="../index.jsp"> <f:message key="menu.inicio" /></a>
			<li>
			<li><a href="timeline.jsp"><f:message key="menu.timeline" /></a>
			<li>
				<!--  <li><a href="jsp/curiosidades.jsp"><f:message
						key="menu.curiosidades" /></a>
			<li>-->
			<li><a href="#"> <f:message key="menu.machine" />
			</a>
			<li>
			<li><a href="#"> <f:message key="menu.diagrama" />
			</a>
			<li>
		</ul>
	</nav>
	<div class="container">

		<!-- Roteiro recusado -->
		<div class="card" style="width: 22rem;">

			<img
				src="https://aventurasnahistoria.uol.com.br/media/_versions/hollywood/de-volta-para-o-futuro-capa_widelg_widelg.jpg"
				class="card-img-top" alt="...">

			<div class="card-body">
				<h5 class="card-title">
					<f:message key="roteiro" />
				</h5>
				<p class="card-text">
					<f:message key="sub.roteiro" />
				</p>
				<!-- Button trigger modal -->
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#exampleModal">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>



		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">
							<f:message key="roteiro" />
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="corpo.roteiro" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Delorean -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/delorean.jpg">
			<div class="card-body">
				<h5 class="card-title">John DeLorean</h5>
				<p class="card-text">
					<f:message key="delorean1" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#del">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="del" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">John DeLorean</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="delorean2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Juiz do concurso -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/juiz.jpeg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title"> <f:message key = "roteiro3"/> </h5>
				<p class="card-text">
					<f:message key="juiz1" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#juiz">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="juiz" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Juiz do
							Concurso de Bandas</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="juiz2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Ator Errado -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/atorrerrado.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<f:message key="titulo.ator" />
				</h5>
				<p class="card-text">
					<f:message key="atores" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#ator">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="ator" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">
							<f:message key="titulo.ator" />
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>


					</div>
					<div class="modal-body">
						<f:message key="atores2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Rockstar -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/rock.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title"><f:message key="roteiro5" /></h5>
				<p class="card-text">
					<f:message key="performance" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#rock">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="rock" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Performance de
							Rockstar!</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="performance2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Billy Zane -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/billy.jpeg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Billy Zane</h5>
				<p class="card-text">
					<f:message key="billy" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#billy">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="billy" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Billy Zane</h5>
						<button type="button" class="close" data-dismiss="billy"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="billy2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Einstein -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/einstein.jpeg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Einstein</h5>
				<p class="card-text">
					<f:message key="einsten" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#eins">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="eins" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Einstein</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="einsten2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>


		<!-- Prefeito -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/prefeito.png" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<f:message key="titulo.prefeito" />
				</h5>
				<p class="card-text">
					<f:message key="titulo.cafe" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#pref">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="pref" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">
							<f:message key="titulo.prefeito" />
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="conteudo.cafe" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Senhor dos Anéis -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/senhoraneis.jpeg">
			<div class="card-body">
				<h5 class="card-title"><f:message key="roteiro9" /></h5>
				<p class="card-text">
					<f:message key="conteudo.senhorAneis" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#aneis">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="aneis" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Senhor dos
							Anéis</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="conteudo.senhorAneis2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Troca de Atores -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/mcfly.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<f:message key="novo" />
					George McFly
				</h5>
				<p class="card-text">
					<f:message key="conteudo.george" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#crispin">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="crispin" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">
							<f:message key="novo" />
							George McFly
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="conteudo.george2" />
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>

		<!-- Hooverboard -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/hover.jpeg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Hoverboard</h5>
				<p class="card-text">
					<f:message key="hoverboard" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#hover">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="hover" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Hooverboard</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="hoverboard2" />
					</div>
				</div>
			</div>
		</div>

		<!-- Regravação dos finais -->
		<div class="card" style="width: 22rem;">
			<img src="../imagem/namorada.jpg" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">
					<f:message key="titulo.regravacao" />
				</h5>
				<p class="card-text">
					<f:message key="elizabeth" />
				</p>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#final">
					<f:message key="leia.mais" />
				</button>
			</div>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="final" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">
							<f:message key="titulo.regravacao" />
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<f:message key="elizabeth2" />
					</div>

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">
							<f:message key="fechar" />
						</button>

					</div>
				</div>
			</div>
		</div>




	</div>

	<h1 class="titulo">
		<f:message key="titulo.invencoes" />
	</h1>

	<div class="container">
		<!-- Holograma -->
		<div class="tamanho">
			<h2>Holograma</h2>
		</div>

		<div class="row">

			<div class="col-6 timagem">
				<img src="../imagem/backto.jpg" class="card-img-top" alt="...">
			</div>
			<div class="col-6 timagem">
				<img src="../imagem/michael.gif" class="card-img-top" alt="...">
			</div>
		</div>


		<!-- Tênis que amarra sozinho -->
		<div class="tamanho">
			<h2>
				<f:message key="titulo.tenis" />
			</h2>
		</div>
		<div class="row">

			<div class="col-6 timagem">
				<img src="../imagem/tenis.jpg" class="card-img-top" alt="...">
			</div>
			<div class="col-6 timagem">
				<img src="../imagem/tenis 2.jpg" class="card-img-top" alt="...">
			</div>
		</div>

		<!-- Óculos inteligente -->
		<div class="tamanho">
			<h2>
				<f:message key="titulo.oculos" />
			</h2>
		</div>
		<div class="row">
			<div class="col-6 timagem">
				<img src="../imagem/oculos.png" class="card-img-top" alt="...">
			</div>
			<div class="col-6 timagem">
				<img src="../imagem/oculos2.jpg" class="card-img-top" alt="...">
			</div>
		</div>

		<!-- Ligações por vídeo -->
		<div class="tamanho">
			<h2>
				<f:message key="titulo.ligacao" />
			</h2>
		</div>
		<div class="row">
			<div class="col-6 timagem">
				<img src="../imagem/videoconferencia.jpg" class="card-img-top"
					alt="...">
			</div>
			<div class="col-6 timagem">
				<img src="../imagem/skype.jpg" class="card-img-top" alt="...">
			</div>
		</div>

	</div>

	<h1 class="titulo">
		<f:message key="titulo.gifsViagem" />
	</h1>
	<div class="container">
		<div class="row">
			<div class="col-6 timagemx">
				<h3>Jeniffer</h3>
				<img src="../imagem/Jennifer.gif" class="card-img-top" alt="...">
			</div>
			<div class="col-6 timagemx">
				<h3>Biff</h3>
				<img src="../imagem/Biff.gif" class="card-img-top" alt="...">
			</div>

		</div>

	</div>

	<div class="container">
		<div class="row">

			<div class="col-6 timagemx">
				<h3>Doctor Brown "Doc"</h3>
				<img src="../imagem/Doc.gif" class="card-img-top" alt="...">
			</div>
			<div class="col-6 timagemx">
				<h3>Marty McFly</h3>
				<img src="../imagem/Marty.gif" class="card-img-top" alt="...">
			</div>

		</div>
	</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
	<script src="../js/menucur.js"></script>
	<script type="text/javascript">
		function enviarIndex() {
			location.href = "../index.jsp";
		}
	</script>

</body>
</html>