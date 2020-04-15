// ************ Require's ************
const express = require('express');
const router = express.Router();
const { check } = require('express-validator');

// ************ Controller Require ************
const mainController = require('../controllers/mainController');
const usersController = require('../controllers/usersController');
const adminController = require('../controllers/adminController');

// ************ Middlewares ************
/* const invMiddleware = require('../middlewares/invMiddleware'); */
const uploadAvatar = require('../middlewares/uploadMiddleware');
const uploadProduct = require('../middlewares/uploadProductsMiddleware');
const registerValidation = require('../middlewares/registerValidations');
const registerValidationAdmin = require('../middlewares/registerValidationAdmin');
const processLoginMiddleware = require('../middlewares/processLoginMiddleware');
const cartMiddleware = require('../middlewares/cartMiddleware');
const authMiddleware = require('../middlewares/authMiddleware');
const userNotAllowedMiddleware = require('../middlewares/userNotAllowedMiddleware');

// ************ PRODUCTOS ************
/* Index GET */
router.get('/', mainController.root);

/* Lista de Productos --> GET */
router.get('/productos', mainController.productos);

/* Detalle de Producto --> GET */
router.get('/productos/:id', mainController.detail);

/* Formulario Carga de Producto --> GET */
router.get('/carga-producto', authMiddleware, mainController.productLoad);

/* Carga de Producto --> POST */
router.post('/carga-producto', uploadProduct.single('image_input'), mainController.addProduct);

/* Formulario de Update Producto --> GET */
router.get('/productos/editar/:id', authMiddleware, mainController.update);

/* Update Producto --> POST */
router.post('/productos/editar/:id', authMiddleware, uploadProduct.single('image_input'), mainController.updateProduct);

/* Eliminación de Productos --> DELETE */
router.delete('/productos/eliminar/:id', authMiddleware, mainController.delete);

/* Carro de Compras --> GET */
router.get('/carrito', cartMiddleware, authMiddleware, mainController.productCart);

/* Carro de Compras --> POST */
router.post('/carrito', cartMiddleware, mainController.addToCart);

/* Carro de Compras --> DELETE */
router.delete('/carrito/eliminar/:id', cartMiddleware, mainController.removeFromCart);

/* Confirma compra --> POST */
router.post('/gracias', mainController.confirmPurchase);

/*
* FILTRADO DE PRODUCTOS
*/
// Consolas
router.get('/plataforma', mainController.filtradoPlataforma);

// Videojuegos
router.get('/videojuegos', mainController.filtradoVideojuegos);

// Electro
router.get('/electro', mainController.filtradoElectro);

// Merchandising
router.get('/merchandising', mainController.filtradoMerchandising);

////////////////////////////////////////////////////////////////////////////////

// ************ USUARIOS ************
/* Formulario de Registro --> GET */
router.get('/registro', usersController.formRegister);

/* Registro de Usuario --> POST */
router.post('/registro', uploadAvatar.single('user_avatar'), registerValidation, usersController.register);

/* Formulario de Login --> GET */
router.get('/users/loginForm', usersController.loginForm);

/* Alta de Login --> POST */
router.post('/users/processLogin', processLoginMiddleware, usersController.processLogin);

/* Vista del Perfil --> GET */
router.get('/perfil', authMiddleware, usersController.profile);

/* Logout --> GET*/
router.get('/users/logout', usersController.logout);

// ************ ADMIN ************
/* Login Admin --> GET */
router.get('/admin', userNotAllowedMiddleware, adminController.root);

/* Login Admin --> POST */
router.post('/admin/processLogin', userNotAllowedMiddleware, adminController.login);

/* Register Admin --> GET */
router.get('/admin/registro', userNotAllowedMiddleware, adminController.addAdmin);

/* Register Admin --> POST */
router.post('/admin/registro', userNotAllowedMiddleware, registerValidationAdmin, adminController.register);

/// Endpoints para React
// Usuarios (cantidad y tipo)
// Productos (cantidad, categorias, precioAvg)

module.exports = router;
