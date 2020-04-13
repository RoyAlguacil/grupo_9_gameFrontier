// ************ Require's ************
const express = require('express');
const router = express.Router();
const { check } = require('express-validator');

// ************ Controller Require ************
const mainController = require('../controllers/mainController');
const usersController = require('../controllers/usersController');

// ************ Middlewares ************
/* const invMiddleware = require('../middlewares/invMiddleware'); */
const uploadAvatar = require('../middlewares/uploadMiddleware');
const uploadProduct = require('../middlewares/uploadProductsMiddleware');
const registerValidation = require('../middlewares/registerValidations');
const processLoginMiddleware = require('../middlewares/processLoginMiddleware');
const cartMiddleware = require('../middlewares/cartMiddleware');

// ************ Rutas de Productos ************
/* Index GET */
router.get('/', mainController.root);

/* Lista de Productos --> GET */
router.get('/productos', mainController.productos);

/* Detalle de Producto --> GET */
router.get('/productos/:id', mainController.detail);

/* Formulario Carga de Producto --> GET */
router.get('/carga-producto', mainController.productLoad);

/* Carga de Producto --> POST */
router.post('/carga-producto', uploadProduct.single('image_input'), mainController.addProduct);

/* Formulario de Update Producto --> GET */
router.get('/productos/editar/:id', mainController.update);

/* Update Producto --> POST */
router.post('/productos/editar/:id', uploadProduct.single('image_input'), mainController.updateProduct);

/* Eliminación de Productos --> DELETE */
router.delete('/productos/eliminar/:id', mainController.delete);

/* Carro de Compras --> GET */
router.get('/carrito', cartMiddleware, mainController.productCart);

/* Carro de Compras --> POST */
router.post('/carrito', cartMiddleware, mainController.addToCart);

/* Carro de Compras --> DELETE */
router.delete('/carrito/eliminar/:id', cartMiddleware, mainController.removeFromCart);

/* Confirma compra --> POST */
router.post('/confirma-compra', mainController.confirmPurchase);

////////////////////////////////////////////////////////////////////////////////

// ************ Rutas de Usuarios ************
/* Formulario de Registro --> GET */
router.get('/registro', usersController.formRegister);

/* Registro de Usuario --> POST */
router.post('/registro', uploadAvatar.single('user_avatar'), registerValidation, usersController.register);

/* Formulario de Login --> GET */
router.get('/users/loginForm', usersController.loginForm);

/* Alta de Login --> POST */
router.post('/users/processLogin', processLoginMiddleware, usersController.processLogin);

/* Logout --> GET*/
router.get('/users/logout', usersController.logout);

/// Endpoints para React
// Usuarios (cantidad y tipo)
// Productos (cantidad, categorias, precioAvg)

module.exports = router;