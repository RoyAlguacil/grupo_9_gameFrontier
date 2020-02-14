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

const getProduct = id => {
  const productosJson = fs.readFileSync(rutaProductos, "utf-8");
  const content = JSON.parse(productosJson);

  let producto = content.filter(pro => {
    return pro.id == id;
  });

  return (producto = producto[0]);
};

const deleteProduct = id => {
  const productosJson = fs.readFileSync(rutaProductos, "utf-8");
  const content = JSON.parse(productosJson);

  const producto = content.filter(pro => {
    return pro.id !== parseInt(id);
  });

  return producto;
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

const updateProduct = (id, producto, image) => {
  let products = getAllProducts();
  products.forEach(item => {
    if (item.id == id) {
      (item.image = image),
        (item.nombre = producto.nombre),
        (item.categoria = producto.categoria),
        (item.subcategoria = producto.subcategoria),
        (item.cantidad = producto.cantidad),
        (item.codigo = producto.codigo),
        (item.valor = producto.valor),
        (item.descripcion = producto.descripcion);
    }
  });
  fs.writeFileSync(rutaProductos, JSON.stringify(products, null, " "));
};

const controller = {
  root: (req, res) => {
    if (req.session.userId) {
      res.render("index", {
        title: "Home page",
        userId: req.session.userId
      });
    } else {
      res.render("index", {
        title: "Home page",
        userId: null
      });
    }
  },
  productos: (req, res) => {
    res.render("catalog", {
      title: "Productos",
      productos: getAllProducts(),
      userId: req.session.userId ? req.session.userId : null
    });
  },
  addProducto: (req, res) => {
    const id = generateId();
    guardaProducto({
      id,
      image: req.file ? req.file.filename : null,
      ...req.body
    });
    const productos = getAllProducts();

    res.render("catalog", {
      title: "Productos",
      productos: productos,
      userId: req.session.userId
    });
  },
  detail: (req, res) => {
    const id = req.params.id;

    const producto = getProduct(id);

    res.render("productDetail", {
      title: "Detalle de producto",
      producto,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  update: (req, res) => {
    const id = req.params.id;
    const producto = getProduct(id);

    res.render("productLoad", {
      title: "Edición de Producto",
      producto,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  updateProduct: (req, res) => {
    const id = req.params.id;
    const producto = req.body;
    const image = req.file ? req.file.filename : null;

    updateProduct(id, producto, image);

    res.render("catalog", {
      title: "Productos",
      productos: getAllProducts(),
      userId: req.session.userId ? req.session.userId : null
    });
  },
  delete: (req, res) => {
    const id = req.params.id;
    let filtrados = deleteProduct(id);
    let jsonFiltrados = JSON.stringify(filtrados);

    fs.writeFileSync(rutaProductos, jsonFiltrados, "utf-8");

    res.redirect("/productos");
  },
  productCart: (req, res) => {
    res.render("productCart", {
      title: "Carrito de compras",
      userId: req.session.userId ? req.session.userId : null
    });
  },
  productLoad: (req, res) => {
    if (req.session.userId) {
      res.render("productLoad", {
        title: "Carga de Producto",
        producto: null,
        userId: req.session.userId
      });
    } else {
      setTimeout(() => {
        res.redirect('/users/loginForm');
      }, 3000)
    }
  },
};

module.exports = controller;