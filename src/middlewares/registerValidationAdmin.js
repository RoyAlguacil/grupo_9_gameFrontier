const { check } = require('express-validator');

module.exports = [
    check('nombre').notEmpty().withMessage('Este campo es obligatorio'),
    check('usuario').notEmpty().withMessage('Este campo es obligatorio'),
    check('email').notEmpty().withMessage('Este campo es obligatorio'),
    check('password').notEmpty().withMessage('Este campo es obligatorio')
];
