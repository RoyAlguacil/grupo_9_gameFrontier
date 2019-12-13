// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const mainController = require('../controllers/mainController');

/* GET - home page. */
router.get('/', mainController.root);
/* GET - Pagina de Registracion*/
router.get('/registro', mainController.formulario);

module.exports = router;
