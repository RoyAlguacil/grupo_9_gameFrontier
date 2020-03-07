const { check } = require('express-validator');

module.exports = [
check('usuario').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('usuario').isLength({min:6}).withMessage('Debe contener al menos 6 caracteres'),

check('password').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('password').isAlphanumeric().withMessage('La contraseña solo debe contener letras y números'),

check('nombre').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('nombre').isLength({min:6}).withMessage('Debe contener al menos 6 caracteres'),

check('telefono').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('telefono').isLength({min:8, max:13}).withMessage('Debe contener al menos 8 números').bail(),
check('telefono').isInt().withMessage('Este campo solo recibe números'),

check('provincia').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('provincia').isLength({min:3, max:15}).withMessage('Debe contener al menos 3 caracteres'),

check('localidad').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('localidad').isLength({min:6}).withMessage('Debe contener al menos 6 caracteres'),

check('dni').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('dni').isLength({min:8, max:8}).withMessage('Debe contener 8 dígitos').bail(),
check('dni').isInt().withMessage('Este campo solo recibe números'),

check('email').notEmpty().withMessage('Este campo es obligatorio').bail(),
check('email').isEmail().withMessage('Formato de email inválido'),

];