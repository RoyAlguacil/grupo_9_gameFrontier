// ************ Require's ************
const express = require('express');
const router = express.Router();

// ************ Controller Require ************
const mainController = require('../controllers/mainController');

/* GET - home page. */
router.get('/', mainController.root);

/* Detalle de Producto */

router.get('/detail', mainController.detail);

/* Carrito de Compras */

router.get('/productCart', mainController.productCart)

module.exports = router;
