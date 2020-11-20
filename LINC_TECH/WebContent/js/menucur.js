const hamburger = document.querySelector('.hamburger');
const navLinks = document.querySelector('.nav-links2');
const links = document.querySelectorAll('.nav-links2 li');


hamburger.addEventListener("click", () => {
	navLinks.classList.toggle("open");
	links.forEach(link => {
		link.classList.toggle("fade");
	});
});