const db = require('../database/models/');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;

function capitalizeFirstLetter(string) {
  return string.charAt(0).toUpperCase() + string.slice(1);
}

const controller = {
  root: (req, res) => {
    if (req.session.userId) {
      res.render('index', {
        title: 'Home page',
        userId: req.session.userId
      });
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
      userId: req.session.userId ? req.session.userId : null
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
          userId: req.session.userId ? req.session.userId : null
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
        }, 1500);
      },
      productCart: (req, res) => {
        res.render('productCart', {
          title: 'Carrito de compras',
          userId: req.session.userId ? req.session.userId : null,
          productosSession: req.session.cart
        });
      },
      productLoad: (req, res) => {
        if (req.session.userId) {
          res.render('productLoad', {
            title: 'Carga de Producto',
            producto: null,
            userId: req.session.userId
          });
        } else {
          setTimeout(() => {
            res.redirect('/users/loginForm');
          }, 3000);
        }
      },
      addToCart: async (req, res) => {
        if (req.session.userId) {
          // Session y cantidad del form
          const productosSession = req.session.cart;
          const cantidadProducto = req.body.cantidad;

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

          // Añado al array de session
          productosSession.push(producto);

          res.render('productCart', {
            title: 'Carrito',
            productosSession,
            userId: req.session.userId ? req.session.userId : null
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
      }
};
        
  module.exports = controller;