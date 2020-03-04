// ************ Require's ************
const express = require("express");
const router = express.Router();
const multer = require("multer");
const path = require("path");
/* const invMiddleware = require("../middlewares/invMiddleware"); */
const logMiddleware = require("../middlewares/logMiddleware");
const {
  check
} = require("express-validator");

let storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, path.join(__dirname, "../../public/images/multer"));
  },
  filename: function(req, file, cb) {
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

// ************ Rutas de Productos ************
/* Index GET */
router.get("/", mainController.root);

/* Lista de Productos --> GET */
router.get("/productos", mainController.productos);

/* Detalle de Producto --> GET */
router.get("/productos/:id", mainController.detail);

/* Formulario Carga de Producto --> GET */
router.get("/carga-producto", mainController.productLoad);

/* Carga de Producto --> POST */
router.post("/productos", upload.single("image_input"), mainController.addProducto);

/* Formulario de Update Producto --> GET */
router.get("/productos/editar/:id", mainController.update);

/* Update Producto --> POST */
router.post("/productos/editar/:id", upload.single("image_input"), mainController.updateProduct);

/* Eliminación de Productos --> DELETE */
router.delete("/productos/eliminar/:id", mainController.delete);

/* Carro de Compras --> GET */
router.get("/carrito", mainController.productCart);

// ************ Rutas de Usuarios ************
/* Formulario de Registro --> GET */
router.get("/registro", usersController.formRegister);

/* Registro de Usuario --> POST */
router.post("/registro", upload.single("user_avatar"), usersController.register);

/* Formulario de Login --> GET */
router.get("/users/loginForm", logMiddleware, usersController.loginForm);

/* Alta de Login --> POST */
router.post("/users/processLogin", [
  // valido usuario
  check("user_email")
  .notEmpty().withMessage("Dato necesario para loguearse").bail()
  .isEmail().withMessage("Formato inválido"),
  //valido password
  check("user_password", "Datos inválidos").notEmpty()
], usersController.processLogin);

/* Logout --> GET*/
router.get("/users/logout", usersController.logout);

module.exports = router;