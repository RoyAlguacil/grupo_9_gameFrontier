window.onload = function () {
    
    let addProduct = document.querySelector('#cartBtn');
    
    addProduct.addEventListener('click', e => {
        let addCart = confirm('¿Quiere agregar este producto al carro de compras?');

        addCart ? null : e.preventDefault();
        
    })
}