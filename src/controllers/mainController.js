const db = require("../database/models/");

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
      allProducts = await db.productos.findAll({
        raw: true
      });
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
      allProducts = await db.productos.findAll({
        raw: true
      });
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
    await db.productos.update({
      imagen: req.file ? req.file.filename : null,
      nombre: req.body.nombre,
      precio: req.body.precio,
      codigo: req.body.codigo,
      descripcion: req.body.descripcion
    }, {
      where: {
        id: req.params.id
      }
    });

    let allProducts;
    try {
      allProducts = await db.productos.findAll({
        raw: true
      });
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