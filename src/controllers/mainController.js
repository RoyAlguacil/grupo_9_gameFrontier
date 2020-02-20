const fs = require("fs");
const path = require("path");
const db = require("../database/models/");

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
  productos: async (req, res) => {
    let allProducts;
    try {
      allProducts = await db.productos.findAll({ raw: true });
    } catch (error) {
      console.log(error);
    }

    res.render("catalog", {
      title: "Productos",
      productos: allProducts,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  addProducto: async (req, res) => {
    await db.productos.create({
      imagen: req.file ? req.file.filename : null,
      nombre: req.body.nombre,
      precio: req.body.precio,
      codigo: req.body.codigo,
      descripcion: req.body.descripcion
    });

    let allProducts;
    try {
      allProducts = await db.productos.findAll({ raw: true });
    } catch (error) {
      console.log(error);
    }

    res.render("catalog", {
      title: "Productos",
      productos: allProducts,
      userId: req.session.userId
    });
  },
  detail: async (req, res) => {
    const producto = await db.productos.findByPk(req.params.id);

    res.render("productDetail", {
      title: "Detalle de producto",
      producto,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  update: async (req, res) => {
    const producto = await db.productos.findByPk(req.params.id);

    res.render("productLoad", {
      title: "Edición de Producto",
      producto,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  updateProduct: async (req, res) => {
    await db.productos.update(
      {
        imagen: req.file ? req.file.filename : null,
        nombre: req.body.nombre,
        precio: req.body.precio,
        codigo: req.body.codigo,
        descripcion: req.body.descripcion
      },
      {
        where: {
          id: req.params.id
        }
      }
    );

    let allProducts;
    try {
      allProducts = await db.productos.findAll({ raw: true });
    } catch (error) {
      console.log(error);
    }

    res.render("catalog", {
      title: "Productos",
      productos: allProducts,
      userId: req.session.userId ? req.session.userId : null
    });
  },
  delete: (req, res) => {
    db.productos.destroy({
      where: {
        id: req.params.id
      }
    });

    setTimeout(() => {
      res.redirect("/productos");
    }, 1500);
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
        res.redirect("/users/loginForm");
      }, 3000);
    }
  }
};

module.exports = controller;
