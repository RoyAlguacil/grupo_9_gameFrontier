// ************ Require's ************
const express = require("express");
const router = express.Router();
const multer = require("multer");
const path = require("path");

let storage = multer.diskStorage({
  destination: function(req, file, cb) {
    cb(null, path.join(__dirname, "../../public/images/multer"));
  },
  filename: function(req, file, cb) {
    let finalName = Date.now() + path.extname(file.originalname);
    cb(null, finalName);
  }
});

let upload = multer({ storage: storage });

// ************ Controller Require ************
const mainController = require("../controllers/mainController");

/* GET - home page. */
router.get("/", mainController.root);

/* GET - Pagina de Registracion*/
router.get("/registro", mainController.register);

/* Detalle de Producto */

router.get("/detalle", mainController.detail);

/* GET - Catálogo*/
router.get("/productos", mainController.productos);

/* POST - Catálogo*/
router.post(
  "/productos",
  upload.single("image_input"),
  mainController.productos
);

/* Carrito de Compras */

router.get("/carrito", mainController.productCart);

/* Carrito de Carga */

router.get("/carga-producto", mainController.productLoad);

module.exports = router;
