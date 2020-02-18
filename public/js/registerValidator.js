window.onload = function() {
   const formulario = document.querySelector('form');
   const inputs = Array.from(formulario.elements);
   inputs.pop();

   const errores = {};
   // Añadir eventos
   inputs.forEach(input => {
       if(input.classList.contains('avatar')) {
          input.addEventListener('change', e => {
              console.log('avatar');
          })
        } else {
            input.addEventListener('blur', () => {
                console.log('no');
            })
        }
    })
console.log(validator);


}