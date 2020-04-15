const db = require('../database/models/');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;
const capitalizeFirstLetter = require('../util/capitalize');

const controller = {
  root: (req, res) => {
    // Si hay usuario logueado
    if (req.session.userId) {
      res.render('index', {
        title: 'Home page',
        userId: req.session.userId,
        userName: req.session.userName,
        userAvatar: req.session.avatar
      });
      // Si hay admin logueado
    } else if (req.session.adminId) {
      res.render('index', {
        title: 'Home page',
        adminId: req.session.adminId,
        userName: req.session.userName,
        userAvatar: req.session.avatar
      });
      // Si no hay nada logueado
    } else {
      res.render('index', {
        title: 'Home page',
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
    
    res.render('catalog', {
      title: 'Productos',
      productos: allProducts,
      userId: req.session.userId ? req.session.userId : null,
      userName: req.session.userName,
      userAvatar: req.session.avatar
    });
  },
  filtradoPlataforma: async (req, res) => {
    let allProducts;
    try {
      allProducts = await db.productos.findAll({
        raw: true
      });
    } catch (error) {
      console.log(error);
    }

    const filtrados = allProducts.filter(producto => {
      const subcategoriaString = `${producto.subcategoriaId}`;
      const categoriaString = `${producto.categoriaId}`;
      return (subcategoriaString === req.query.subcategoria) && (categoriaString === req.query.categoria);
    });

    res.render('catalog', {
      title: 'Productos',
      productos: filtrados,
      userId: req.session.userId ? req.session.userId : null,
      userName: req.session.userName,
      userAvatar: req.session.avatar
    });
  },
  filtradoVideojuegos: async (req, res) => {
    let allProducts;
    try {
      allProducts = await db.productos.findAll({
        raw: true
      });
    } catch (error) {
      console.log(error);
    }

    const filtrados = allProducts.filter(producto => {
      const subcategoriaString = `${producto.subcategoriaId}`;
      const categoriaString = `${producto.categoriaId}`;
      return (subcategoriaString === req.query.subcategoria) && (categoriaString === req.query.categoria);
    });

    res.render('catalog', {
      title: 'Productos',
      productos: filtrados,
      userId: req.session.userId ? req.session.userId : null,
      userName: req.session.userName,
      userAvatar: req.session.avatar
    });
  },
  filtradoElectro: async (req, res) => {
    let allProducts;
    try {
      allProducts = await db.productos.findAll({
        raw: true
      });
    } catch (error) {
      console.log(error);
    }

    const filtrados = allProducts.filter(producto => {
      const subcategoriaString = `${producto.subcategoriaId}`;
      const categoriaString = `${producto.categoriaId}`;
      return (subcategoriaString === req.query.subcategoria) && (categoriaString === req.query.categoria);
    });

    res.render('catalog', {
      title: 'Productos',
      productos: filtrados,
      userId: req.session.userId ? req.session.userId : null,
      userName: req.session.userName,
      userAvatar: req.session.avatar
    });
  },
  filtradoMerchandising: async (req, res) => {
    let allProducts;
    try {
      allProducts = await db.productos.findAll({
        raw: true
      });
    } catch (error) {
      console.log(error);
    }

    const filtrados = allProducts.filter(producto => {
      const subcategoriaString = `${producto.subcategoriaId}`;
      const categoriaString = `${producto.categoriaId}`;
      return (subcategoriaString === req.query.subcategoria) && (categoriaString === req.query.categoria);
    });

    res.render('catalog', {
      title: 'Productos',
      productos: filtrados,
      userId: req.session.userId ? req.session.userId : null,
      userName: req.session.userName,
      userAvatar: req.session.avatar
    });
  },
  addProduct: async (req, res) => {
    const categoriaId = await db.categorias.findOne(
      {
        where: {
          nombre: {
            [Op.like]: capitalizeFirstLetter(req.body.categoria)
          }
        }
      }
      );
      const subcategoriaId = await db.subcategorias.findOne(
        {
          where: {
            nombre: {
              [Op.like]: req.body.subcategoria
            }
          }
        }
        );
        await db.productos.create({
          imagen: req.file ? req.file.filename : null,
          nombre: req.body.nombre,
          precio: req.body.precio,
          codigo: req.body.codigo,
          descripcion: req.body.descripcion,
          categoriaId: categoriaId.dataValues.id,
          subcategoriaId: subcategoriaId.dataValues.id
        });
        
        let allProducts;
        try {
          allProducts = await db.productos.findAll({
            raw: true
          });
        } catch (error) {
          console.log(error);
        }
        
        res.render('catalog', {
          title: 'Productos',
          productos: allProducts,
          userId: req.session.userId
        });
      },
      detail: async (req, res) => {
        let producto = await db.productos.findByPk(req.params.id);
        const productoCategoria = await db.categorias.findByPk(producto.categoriaId);
        const productoSubcategoria = await db.subcategorias.findByPk(producto.subcategoriaId);
        
        producto.categoria = productoCategoria.dataValues.nombre;
        producto.subcategoria = productoSubcategoria.dataValues.nombre;
        
        res.render('productDetail', {
          title: 'Detalle de producto',
          producto,
          userId: req.session.userId ? req.session.userId : null,
          userName: req.session.userName,
          userAvatar: req.session.avatar
        });
      },
      update: async (req, res) => {
        const producto = await db.productos.findByPk(req.params.id);
        
        res.render('productLoad', {
          title: 'Edición de Producto',
          producto,
          userId: req.session.userId ? req.session.userId : null
        });
      },
      updateProduct: async (req, res) => {
        const categoriaId = await db.categorias.findOne(
          {
            where: {
              nombre: {
                [Op.like]: capitalizeFirstLetter(req.body.categoria)
              }
            }
          });
          
        const subcategoriaId = await db.subcategorias.findOne(
          {
            where: {
              nombre: {
                [Op.like]: req.body.subcategoria
              }
            }
          });
            
        await db.productos.update({
          imagen: req.file ? req.file.filename : null,
          nombre: req.body.nombre,
          precio: req.body.precio,
          codigo: req.body.codigo,
          descripcion: req.body.descripcion,
          categoriaId: categoriaId.dataValues.id,
          subcategoriaId: subcategoriaId.dataValues.id
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

        res.render('catalog', {
          title: 'Productos',
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
          res.redirect('/productos');
        }, 2000);
      },
      productLoad: (req, res) => {
        if (req.session.userId) {
          res.render('productLoad', {
            title: 'Carga de Producto',
            producto: null,
            userId: req.session.userId,
            userName: req.session.userName,
            userAvatar: req.session.avatar
          });
        } else {
          setTimeout(() => {
            res.redirect('/users/loginForm');
          }, 3000);
        }
      },
      productCart: async (req, res) => {
      const usuario = await db.usuarios.findByPk(req.session.userId);
          res.render('productCart', {
            title: 'Carrito de compras',
            usuario,
            userId: req.session.userId ? req.session.userId : null,
            userName: req.session.userName,
            userAvatar: req.session.avatar,
            productosSession: req.session.cart
          });
      },
      addToCart: async (req, res) => {
        if (req.session.userId) {
          // Session y cantidad del form
          const productosSession = req.session.cart;
          const cantidadProducto = parseInt(req.body.cantidad);

          // Producto de DB
          const productoDB = await db.productos.findByPk(req.body.productoId);

          // Categoria
          const productoCategoria = await db.categorias.findByPk(productoDB.dataValues.categoriaId);
          const nombreCategoria = productoCategoria.dataValues.nombre.toLowerCase();

          // Producto con cantidad especificada
          const producto = {
            ...productoDB.dataValues,
            cantidadProducto,
            nombreCategoria
          };

          // Buscamos el usuario logueado
          const usuario = await db.usuarios.findByPk(req.session.userId);

          // Añado al array de session dependiendo si el item ya esta ahí o no
          productosSession.forEach(producto => {
            if (productoDB.dataValues.id === producto.id) {
              producto.cantidadProducto += cantidadProducto;
              return res.render('productCart', {
                title: 'Carrito',
                usuario,
                productosSession,
                userId: req.session.userId ? req.session.userId : null,
                userName: req.session.userName,
                userAvatar: req.session.avatar
              });
            }
          });

          // Si no estaba ahí, se añade
          productosSession.push(producto);

          res.render('productCart', {
            title: 'Carrito',
            usuario,
            productosSession,
            userId: req.session.userId ? req.session.userId : null,
            userName: req.session.userName,
            userAvatar: req.session.avatar
          });
        } else {
          res.redirect('/users/loginForm');
        }
      },
      removeFromCart: (req, res) => {
        const products = req.session.cart;

        const filtered = products.filter(product => {
          if (`${product.id}` !== req.params.id) {
            return product;
          }
        });

        // El nuevo session cart
        req.session.cart = filtered;

        res.redirect('/carrito');
      },
      confirmPurchase: (req, res) => {
        // Cargar compra en la base --> pendiente
        res.render('thanks', {
          title: 'Gracias!',
          userId: req.session.userId ? req.session.userId : null
        });
      },
};
        
  module.exports = controller;
