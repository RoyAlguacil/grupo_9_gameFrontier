window.onload = function () {
    const formulario = document.querySelector('form');
    const inputs = Array.from(formulario.elements);
    inputs.pop();

    const errores = {};
    // Añadir eventos
    inputs.forEach(function (input) {
        input.addEventListener('blur', function () {
            let valorInput = this.value;
            if (validator.isEmpty(valorInput, { ignore_whitespace: true })) {
                this.classList.add('is-invalid');
                this.nextElementSibling.innerHTML = `El campo "${this.dataset.name}" es obligatorio`;
                errores[this.name] = true;
                console.log(errores);
            } else {
                this.classList.remove('is-invalid');
                this.classList.add('is-valid');
                this.nextElementSibling.innerHTML = ``;
                delete errore[this.name];
                console.log(errores);
            }
        })
    })
    // console.log(validator);
}