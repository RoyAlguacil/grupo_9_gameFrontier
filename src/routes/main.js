// ************ Require's ************
const express = require("express");
const router = express.Router();
const multer = require("multer");
const path = require("path");
const invMiddleware = require("../middlewares/invMiddleware");
const logMiddleware = require("../middlewares/logMiddleware");

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

/* Products update --> GET */
router.get("/productos/editar/:id", mainController.update);

/* Products update --> POST */
router.post(
    "/productos/editar/:id",
    upload.single("image_input"),
    mainController.updateProduct
);

/* Products delete --> POST */
router.delete("/productos/eliminar/:id", mainController.delete);

/* Cart GET */
router.get("/carrito", mainController.productCart);

// Users
/* Registro GET*/
router.get("/registro", mainController.formRegister);

/* Users POST */
router.post("/registro", upload.single("user_avatar"), mainController.register);

/* Users */
/* Login GET */
router.get("/users/loginForm", logMiddleware, usersController.loginForm);

/* Login POST */
router.post("/users/processLogin", usersController.processLogin);

/* Logout GET*/
router.get("/users/logout", usersController.logout);

module.exports = router;