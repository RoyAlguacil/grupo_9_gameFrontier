const fs = require("fs");
const path = require("path");
const bcrypt = require("bcrypt");

const rutaProductos = path.join(__dirname, "../data/products.json");

const getAllProducts = () => {
  let productosJson = fs.readFileSync(rutaProductos, "utf-8");
  let content;
  if (productosJson == "") {
    content = [];
  } else {
    content = JSON.parse(productosJson);
  }
  return content;
};

const generateId = () => {
  let products = getAllProducts();
  if (products.length == 0) {
    return 1;
  }
  let ultimoProducto = products.pop();
  return ultimoProducto.id + 1;
};

const guardaProducto = bodyProducto => {
  let products = getAllProducts();
  products.push(bodyProducto);
  fs.writeFileSync(rutaProductos, JSON.stringify(products, null, " "));
};

const controller = {
  root: (req, res) => {
    res.render("index", {
      title: "Home page"
    });
  },
  productos: (req, res) => {
    console.log(req.body);
    const id = generateId();
    guardaProducto({
      id,
      image: req.file ? req.file.filename : null,
      ...req.body
    });
    console.log(req.body);

    res.render("catalog", {
      title: "Productos",
      productos: getAllProducts()
    });
  },
  detail: (req, res) => {
    res.render("productDetail", {
      title: "Detalle de producto"
    });
  },
  register: (req, res) => {
    res.render("register", {
      title: "Registro"
    });
  },
  productCart: (req, res) => {
    res.render("productCart", {
      title: "Carrito de compras"
    });
  },
  productLoad: (req, res) => {
    res.render("productLoad", {
      title: "Carga de Producto"
    });
  }
};

module.exports = controller;
