<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="../WEB-INF/snippets/imports/libs-head.jsp" %>
<!--Favicon-->
<link rel="icon" href="../favicon.ico">
<link rel="stylesheet" href="../css/main.css">
<link rel="stylesheet" href="../css/mai.css">
<link rel="stylesheet" href="../css/curiosi.css">
<title>Curiosidades</title>
</head>
<body>
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
			<li><a href="../index.jsp">Início</a><li>
			<li><a href="timeline.jsp">Timeline</a><li>	
			<li><a href="#">Machine Learning</a><li>
			<li><a href="#">Diagrama de classes</a><li>
		</ul>
	</nav>
<div class="container">

<!-- Roteiro recusado -->
<div class="card" style="width: 22rem;">

  <img src="https://aventurasnahistoria.uol.com.br/media/_versions/hollywood/de-volta-para-o-futuro-capa_widelg_widelg.jpg" class="card-img-top" alt="...">
 
  <div class="card-body">
    <h5 class="card-title">Roteiro Recusado</h5>
    <p class="card-text">O roteiro foi rejeitado 40 vezes antes de ser, finalmente, aceito</p>
    <!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Leia Mais
</button>
  </div>
</div>



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Roteiro Recusado</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        O roteiro foi rejeitado 40 vezes antes de ser, finalmente, aceito.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Delorean -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/delorean.jpg">
  <div class="card-body">
    <h5 class="card-title">John DeLorean</h5>
    <p class="card-text">Os roteiristas/produtores/diretores Bob Gale e Robert Zemeckis, realmente receberam uma carta de...</p>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#del">
  Leia Mais
</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="del" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">John DeLorean</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Os roteiristas/produtores/diretores Bob Gale e Robert Zemeckis, realmente receberam uma carta de John DeLorean após o lançamento do filme, agradecendo-lhes por usar o carro dele na produção. Aliás foram usados 3 DeLoreans durante as filmagens. O DeLorean foi deliberadamente escolhido por sua aparência e pelas portas estilo “asa de gaivota”, tornando plausível que as pessoas, em 1955, presumissem que se tratava de uma nave alienígena.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Juiz do concurso -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/juiz.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Juiz do Concurso</h5>
    <p class="card-text">Quando Marty está sendo julgado nas audições das novas bandas no início do filme, o juiz que se levanta para dizer... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#juiz">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="juiz" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Juiz do Concurso</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       Quando Marty está sendo julgado nas audições das novas bandas no início do filme, 
       o juiz que se levanta para dizer que eles “tocam alto demais” é Huey Lewis, cujas canções, 
       “The Power of Love” e “Back in Time” fazem parte da trilha sonora do filme. 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Ator Errado -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/atorrerrado.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Ator Errado</h5>
    <p class="card-text">Após quatro semanas de filmagens, Robert Zemeckis e Bob Gale sentiram que Eric Stoltz não era o ator certo para o papel de Marty McFly e Stoltz concordou. Sendo Michael J. Fox o substituto para o papel... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#ator">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="ator" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ator Errado</h5>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
          
        </button>
      </div>
      <div class="modal-body">
      Após quatro semanas de filmagens, Robert Zemeckis e Bob Gale sentiram que Eric Stoltz não era o ator certo para o papel de Marty McFly e Stoltz concordou. Sendo Michael J.
       Fox o substituto para o papel, teve de refilmar todas as cenas feitas por Stoltz que gerou cerca de três milhões de dólares a mais no orçamento.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Rockstar -->
<div class="card" style="width: 22rem;">
 <img src="../imagem/rock.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Performance de Rockstar</h5>
    <p class="card-text">Marty McFly imita várias estrelas do rock famosas durante a última parte de sua performance no baile da escola, quando ele começa a tocar heavy metal. Seu chute e o salto nos alto-falantes são...</p>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#rock">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="rock" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Performance de Rockstar!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Marty McFly imita várias estrelas do rock famosas durante a última parte de sua performance no baile da escola, quando ele começa a tocar heavy metal. Seu chute e o salto nos alto-falantes são de Pete Thousand (The Who), tocar a guitarra enquanto está deitado vem de Angus Young (AC / DC), o andar agachado enquanto chuta o ar é de Chuck Berry, 
      o seu solo com a guitarra próxima ao rosto é de Edward Van Halen (Van Halen) e o estilo de tocar com a guitarra nas costas é de Jimi Hendrix. 
       </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Billy Zane -->
<div class="card" style="width: 22rem;">
   <img src="../imagem/billy.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Billy Zane</h5>
    <p class="card-text">Billy Zane (Cal Hockley em Titanic) faz sua primeira aparição no cinema neste filme como “Match”, um dos comparsas de Biff. Ironicamente, apesar de ter a carreira mais sólida dos quatro membros da...</p>
    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#billy">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="billy" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Billy Zane</h5>
        <button type="button" class="close" data-dismiss="billy" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
     Billy Zane (Cal Hockley em Titanic) faz sua primeira aparição no cinema neste filme como “Match”, um dos comparsas de Biff. 
     Ironicamente, apesar de ter a carreira mais sólida dos quatro membros
      da turma após “De Volta Para o Futuro”, ele foi o único da turma que não teve absolutamente nenhuma fala enquanto esteve em cena.  </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Einstein -->
<div class="card" style="width: 22rem;">
   <img src="../imagem/einstein.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Einstein</h5>
    <p class="card-text">Christopher Lloyd baseou seu desempenho como Doc Brown em uma combinação do físico Albert Einstein, do maestro Leopold Stokowski e do... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#eins">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="eins" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Einstein</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Christopher Lloyd baseou seu desempenho como Doc Brown em uma combinação do físico Albert Einstein, do maestro Leopold Stokowski
       e do personagem Rotwang, o inventor do filme “Metrópolis” (1927) interpretado pelo ator Rudolf Klein-Rogge.  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>


<!-- Prefeito -->
<div class="card" style="width: 22rem;">
   <img src="../imagem/prefeito.png" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Prefeito</h5>
    <p class="card-text">O dono do café em 1955 zomba da ideia de um prefeito negro, mas o primeiro prefeito negro de uma cidade da Califórnia já tinha sido eleito décadas antes... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#pref">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="pref" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Prefeito</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      O dono do café em 1955 zomba da ideia de um prefeito negro, mas o primeiro prefeito negro de uma
       cidade da Califórnia já tinha sido eleito décadas antes. Foi Edward Duplex, prefeito eleito de Wheatland em 1888.  
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Senhor dos Anéis -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/senhoraneis.jpeg">
  <div class="card-body">
    <h5 class="card-title">Senhor dos Anéis</h5>
    <p class="card-text">Assim como o filme anterior lançou no cinema o ator Billy Zane, este aqui também foi a estreia de outro ator que ficaria famoso. Elijah Wood... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#aneis">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="aneis" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Senhor dos Anéis</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Assim como o filme anterior lançou no cinema o ator Billy Zane, este aqui também foi a estreia de outro ator que ficaria famoso. Elijah Wood. Ele interpreta um dos dois meninos que conversam com Marty sobre o vídeo game dos anos 80 na lanchonete de 2015, logo no início do filme. Anos depois, o ator seria o protagonista de uma das maiores obras do cinema; a trilogia “O Senhor dos Anéis”. 
      O outro garoto é John Thornton, que não seguiu com a carreira artística após pequenos papéis em séries de TV, deixando a profissão em 1992.   
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Troca de Atores -->
<div class="card" style="width: 22rem;">
   <img src="../imagem/mcfly.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Novo George McFly</h5>
    <p class="card-text">Crispin Glover (George McFly em “De Volta para o Futuro” (1985)) durante as negociações do segundo filme acabou exigindo coisas absurdas e... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#crispin">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="crispin" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Novo George McFly</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Crispin Glover (George McFly em “De Volta para o Futuro” (1985)) durante as negociações do segundo filme 
      acabou exigindo coisas absurdas e por não entrar em um consenso com a gravadora foi retirado das continuações. Jeffrey Weissman foi escalado como George e, usando moldes do rosto de Crispin feitas no set do primeiro filme, criaram próteses faciais para deixar Jeffrey semelhante à Crispin, de modo que pudessem recriar trechos do filme original para incorporá-los à esta continuação. Todos as cenas em que George McFly aparece neste filme 
      (exceto a aparição na reprise da cena final do filme anterior) ele está sendo interpretado por Weissman.  </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>

<!-- Hooverboard -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/hover.jpeg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Hoverboard</h5>
    <p class="card-text">Vinte e seis anos depois do lançamento do filme, a The Lexus Corp., com o auxílio de supercondutores (arrefecidos por nitrogênio... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#hover">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="hover" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Hooverboard</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Vinte e seis anos depois do lançamento do filme, a The Lexus Corp., com o auxílio de supercondutores 
      (arrefecidos por nitrogênio líquido) e ímãs (na placa e enterrados no chão debaixo dela), construiu um 
      hoverboard funcional. Uma outra empresa, a Hendo, também construiu um protótipo que não necessita de 
      refrigeração e trabalha com motores que criam um campo magnético que “literalmente se empurra contra si 
      mesmo, gerando a força que faz a prancha levitar sobre o chão”, mas que no atual estágio, necessita que 
      a superfície sobre a qual ele trabalhe seja composta por condutores não-ferromagnéticos. Apesar de funcionarem, 
      estes protótipos ainda estão longe de se tornarem práticos o suficiente para serem utilizados no dia-a-dia. 
  	</div>
  </div>
  </div>
  </div>
  
  <!-- Regravação dos finais -->
<div class="card" style="width: 22rem;">
  <img src="../imagem/namorada.jpg" class="card-img-top" alt="...">
  <div class="card-body">
    <h5 class="card-title">Regravação dos finais</h5>
    <p class="card-text">Elisabeth Shue foi escalada como Jennifer para esta continuação, e todas as cenas do encerramento de “De Volta Para o Futuro” (1985) foram re-filmadas para o início ... </p>
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#final">Leia Mais</button>
  </div>
</div>

<!-- Modal -->
<div class="modal fade" id="final" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Refilmagem dos Finais</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      Elisabeth Shue foi escalada como Jennifer para esta continuação, e todas as cenas do encerramento de “De Volta Para o Futuro” 
      (1985) foram re-filmadas para o início deste filme. Claudia Wells (a Jennifer em “De Volta para o Futuro”) não pôde reprisar seu papel,
       uma vez que ela necessitou dar uma pausa em sua carreira para cuidar de sua mãe que tinha sido diagnosticada com câncer.  
  </div>
  
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
        
      </div>
    </div>
  </div>
</div>




</div>

<h1 class="titulo">Invenções Reais</h1>

<div class="container">
<!-- Holograma -->
<div class="tamanho"><h2>Holograma</h2></div>

  <div class="row">
  
    <div class="col-6 timagem"> <img src="../imagem/backto.jpg" class="card-img-top" alt="..."></div>
    <div class="col-6 timagem"> <img src="../imagem/michael.gif" class="card-img-top" alt="..."></div>
    </div>
    
    
    <!-- Tênis que amarra sozinho -->
     <div class="tamanho"> <h2>Tênis que amarra sozinho</h2></div>
    <div class="row">
  
     <div class="col-6 timagem"> <img src="../imagem/tenis.jpg" class="card-img-top" alt="..."></div>
    <div class="col-6 timagem"> <img src="../imagem/tenis 2.jpg" class="card-img-top" alt="..."></div>
   </div>
   
    <!-- Óculos inteligente -->
    <div class="tamanho"><h2>Óculos inteligente</h2></div>
    <div class="row">
       <div class="col-6 timagem"> <img src="../imagem/oculos.png" class="card-img-top" alt="..."></div>
    <div class="col-6 timagem"> <img src="../imagem/oculos2.jpg" class="card-img-top" alt="..."></div>
    </div>
   
    <!-- Ligações por vídeo -->
   <div class="tamanho"> <h2>Ligações por vídeo</h2></div>
    <div class="row">
     <div class="col-6 timagem"> <img src="../imagem/videoconferencia.jpg" class="card-img-top" alt="..."></div>
    <div class="col-6 timagem"> <img src="../imagem/skype.jpg" class="card-img-top" alt="..."></div>
    </div>
  
  </div>
  
  <h1 class="titulo">Viagens no Tempo de cada Personagem</h1>
  <div class="container">
  <div class="row">
     <div class="col-6 timagemx"><h3>Jeniffer</h3> <img src="../imagem/Jennifer.gif" class="card-img-top" alt="..."></div>
    <div class="col-6 timagemx"><h3>Biff</h3> <img src="../imagem/Biff.gif" class="card-img-top" alt="..."></div>
    
    </div>
    
    </div>
    
     <div class="container">
  <div class="row">
  
     <div class="col-6 timagemx"><h3>Doctor Brown</h3><img src="../imagem/Doc.gif" class="card-img-top" alt="..."></div>
    <div class="col-6 timagemx"><h3>McFly</h3> <img src="../imagem/Marty.gif" class="card-img-top" alt="..."></div>
    
    </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
<script src="../js/menucur.js"></script>
	<script type="text/javascript">
		function enviarIndex() {
			location.href = "../index.jsp";
		}
	</script>

</body>
</html>