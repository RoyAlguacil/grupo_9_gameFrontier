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

/******
 * Productos
 */

/* Index GET */
router.get("/", mainController.root);

/* Registro GET*/
router.get("/registro", mainController.formRegister);

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
    mainController.productos
);

/* Products update --> POST */
router.get("/productos/editar/:id", mainController.update);

/* Products delete --> POST */
router.get("/productos/eliminar/:id", mainController.delete);

/* Cart GET */
router.get("/carrito", mainController.productCart);

/* Users POST */

router.post("/registro", mainController.register);

module.exports = router;