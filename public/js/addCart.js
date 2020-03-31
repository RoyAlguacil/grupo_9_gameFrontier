window.onload = function () {

let addProduct = document.querySelector('#cartBtn');

addProduct.addEventListener('click', e => {
let addCart = confirm('¿Quiere agregar este prodcuto al carro de compras?');

!addCart ? e.preventDefault() : null;

})
}