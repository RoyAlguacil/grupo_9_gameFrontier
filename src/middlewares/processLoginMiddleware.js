const { check } = require('express-validator');

 module.exports = [
  // valido usuario
  check('user_email')
  .notEmpty().withMessage('Dato necesario para loguearse').bail()
  .isEmail().withMessage('Formato inválido'),
  //valido password
  check('user_password', 'Datos inválidos').notEmpty()
];