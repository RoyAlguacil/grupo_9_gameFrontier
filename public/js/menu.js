// Muestro menu al clickear boton
const menu = document.querySelector(".menu");
const mainMenu = document.querySelector(".main-menu");
menu.addEventListener("click", () => {
    mainMenu.classList.toggle("menu-is-open");
});