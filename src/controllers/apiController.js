// API Controller
const db = require('../database/models/');
const Sequelize = require('sequelize');
const Usuarios = db.usuarios;
const Admins = db.admins;
const Productos = db.productos;
const Newsletters = db.newsletters;
const Categorias = db.categorias;
const path = require('path');

const controller = {
    usuarios: async (req, res) => {
        const usuarios = await Usuarios.findAll()
            .then(data => data)

        res.json(usuarios);
    },
    admins: async (req, res) => {
        const admins = await Admins.findAll()
            .then(data => data)

        res.json(admins);
    },
    productos: async (req, res) => {
        const productos = await Productos.findAll()
            .then(data => data)

        res.json(productos);
    },
    newsletters: async (req, res) => {
        const newsletters = await Newsletters.findAll()
            .then(data => data)

        res.json(newsletters);
    },
    categorias: async (req, res) => {
        const categorias = await Categorias.findAll()
            .then(data => data)

        res.json(categorias);
    },
    ultimoProductoImg: async (req, res) => {
        const todos = await Productos.findAll()
            .then(data => data);

        const ultimoProductoImg = todos[todos.length - 1].imagen;

        res.sendFile(path.resolve(__dirname, '../../public/images/multer/' + ultimoProductoImg));
    }
}

module.exports = controller;
