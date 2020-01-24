// ************ Require's ************
const express = require("express");
const router = express.Router();
const multer = require("multer");
const path = require("path");

let storage = multer.diskStorage({
    destination: function (req, file, cb) {
        cb(null, path.join(__dirname, "../../public/images/multer"));
    },
    filename: function (req, file, cb) {
        let finalName = Date.now() + path.extname(file.originalname);
        cb(null, finalName);
    }
});

let upload = multer({
    storage: storage
});

// ************ Controller Require ************
const mainController = require("../controllers/mainController");
const usersController = require("../controllers/usersController");

/******
 * Productos
 */

/* Index GET */
router.get("/", mainController.root);

<<<<<<< HEAD
/* Registro GET*/
router.get("/users/register", mainController.register);

=======
>>>>>>> 146ee44fd2d9aa95762bb80c0b4b30c6f1a541fc
/* Products obtain --> GET */
router.get("/productos", mainController.productos);

/* Products/:id obtain --> GET */
router.get("/productos/:id", mainController.detail);

/* Products create GET */
router.get("/carga-producto", mainController.productLoad);

/* Products create --> POST */
router.post(
    "/productos",
    upload.single("image_input"),
    mainController.addProducto
);

<<<<<<< HEAD
/* Formulario de Login --> GET */
router.get("/users/loginForm", usersController.loginForm);

/* Formulario de Login --> GET */
router.post("/users/register", usersController.processLogin)

/* Products update --> POST */
=======
/* Products update --> GER */
>>>>>>> 146ee44fd2d9aa95762bb80c0b4b30c6f1a541fc
router.get("/productos/editar/:id", mainController.update);

/* Products update --> POST */
router.post("/productos/editar/:id", mainController.updateProduct);

/* Products delete --> POST */
router.get("/productos/eliminar/:id", mainController.delete);

/* Cart GET */
router.get("/carrito", mainController.productCart);

// Users
/* Registro GET*/
router.get("/registro", mainController.formRegister);

/* Users POST */
router.post("/registro", mainController.register);

module.exports = router;