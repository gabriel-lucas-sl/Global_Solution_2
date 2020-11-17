 

function fluxoAlternativo() {
	document.body.style.backgroundColor = "#cdb30c";
	document.getElementById("box").style.background = "#1b1b1b";
	document.getElementById("voltar-a").style.color = "#1b1b1b";
	document.getElementById("img-personagem").innerHTML = `
	<img alt="Imagem do personagem" src="../img/marty3.jpg" id="img-personagem">`;
	document.getElementById("autor").style.color = "#fff";
	document.getElementById("titulo").style.color = "#fff";
	document.getElementById("texto").style.color = "#fff";
	document.getElementById("btnOriginal").style.color =  "#1b1b1b";
	document.getElementById("btnAlternativo").style.color = "#1b1b1b";
	document.getElementById("btnOriginal").style.background =  "#cdb30c";
	document.getElementById("btnAlternativo").style.background = "#cdb30c";
	document.getElementById("btnAlternativo").onmouseover = function() {
		this.style.borderColor = "#fff";
		this.style.background = "none";
		this.style.color = "#fff";
		console.log("entrei");
	}
	document.getElementById("btnAlternativo").onmouseout = function() {
		this.style.borderColor = "none";
		this.style.background = "#cdb30c";
		this.style.color = "#1b1b1b";
		console.log("entrei");
	}
	document.getElementById("btnOriginal").onmouseover = function() {
		this.style.borderColor = "#fff";
		this.style.background = "none";
		this.style.color = "#fff";
		console.log("entrei");
	}
	document.getElementById("btnOriginal").onmouseout = function() {
		this.style.borderColor = "none";
		this.style.background = "#cdb30c";
		this.style.color = "#1b1b1b";
		console.log("entrei");
	}
	document.getElementById("auxNav").style.background = "#1b1b1b";
}


function fluxoOriginal() {
	document.body.style.backgroundColor = "#1b1b1b";
	document.getElementById("box").style.background = "#cdb30c";
	document.getElementById("voltar-a").style.color = "#cdb30c";
	document.getElementById("img-personagem").innerHTML = `
	<img alt="Imagem do personagem" src="../img/marty.jpg" id="img-personagem">`;
	document.getElementById("autor").style.color = "#1b1b1b";
	document.getElementById("titulo").style.color = "#1b1b1b";
	document.getElementById("texto").style.color = "#1b1b1b";
	document.getElementById("btnOriginal").style.color =  "#fff";
	document.getElementById("btnAlternativo").style.color = "#fff";
	document.getElementById("btnOriginal").style.background =  "#1b1b1b";
	document.getElementById("btnAlternativo").style.background = "#1b1b1b";
	document.getElementById("btnOriginal").onmouseover = function() {
		this.style.borderColor = "#1b1b1b";
		this.style.background = "none";
		this.style.color = "#1b1b1b";
		console.log("entrei");
	}
	document.getElementById("btnOriginal").onmouseout = function() {
		this.style.borderColor = "none";
		this.style.background = "#1b1b1b";
		this.style.color = "#fff";
		console.log("entrei");
	}
	document.getElementById("btnAlternativo").onmouseover = function() {
		this.style.borderColor = "#1b1b1b";
		this.style.background = "none";
		this.style.color = "#1b1b1b";
		console.log("entrei");
	}
	document.getElementById("btnAlternativo").onmouseout = function() {
		this.style.borderColor = "none";
		this.style.background = "#1b1b1b";
		this.style.color = "#fff";
		console.log("entrei");
	}
	document.getElementById("auxNav").style.background = "#cdb30c";
}