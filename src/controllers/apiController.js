// API Controller
const db = require('../database/models/');
const Sequelize = require('sequelize');
const Usuarios = db.usuarios;
const Admins = db.admins;
const Productos = db.productos;
const Newsletters = db.newsletters;

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
    }
}

module.exports = controller;
