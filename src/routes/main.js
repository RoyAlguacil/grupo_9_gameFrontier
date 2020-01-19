// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const mainController = require('../controllers/mainController');

/* GET - home page. */
router.get('/', mainController.root);

/* GET - Pagina de Registracion*/
router.get('/registro', mainController.register);

/* Detalle de Producto */

router.get('/detalle', mainController.detail);

/* GET - Catálogo*/
router.get('/productos', mainController.productos);

/* Carrito de Compras */

router.get('/carrito', mainController.productCart)

/* Carrito de Carga */

router.get('/carga-producto', mainController.productLoad)

module.exports = router;