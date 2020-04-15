const bcrypt = require('bcrypt');
const db = require('../database/models/');
const Sequelize = require('sequelize');
const Op = Sequelize.Op;
const Admins = db.admins;
const { validationResult } = require('express-validator');
const capitalizeFirstLetter = require('../util/capitalize');

const controller = {
    root: (req, res) => {
        res.render('admin/loginForm', {
            title: 'Admin',
            userId: null
        });
    },
    login: (req, res) => {
        req.session.adminId = 1;
        req.session.userName = 'test';
        req.session.avatar = 'test';
        res.redirect('/');
    },
    profile: (req, res) => {
      res.send('profile!');
    },
    addAdmin: (req, res) => {
        res.render('admin/addAdmin', {
            title: 'Añadir administrador',
            userId: null
        });
    },
    register: async (req, res) => {
        // Chequear la base por usuario
        const usuarioEncontrado = await Admins
            .findOne({
                where:{usuario: req.body.usuario}
            });

        // Si usuario ya existe
        if (usuarioEncontrado) {
            return res.render('admin/addAdmin', {
                title: 'Añadir administrador',
                userId: null,
                errors: [{
                    param: 'Error',
                    msg: 'Nombre de usuario en uso'
                }],
                capitalizeFirstLetter
            });
        }

        // Busco errores en el array de express validator
        let errors = validationResult(req);
        if (errors.isEmpty()) {
        req.body.password = bcrypt.hashSync(req.body.password, 11);
        await Admins
            .create({
                avatar: req.file ? req.file.filename : null,
                ...req.body
            })
            .then(() => {
                setTimeout(() => {
                    return res.redirect('/admin');
                }, 2000);
            })
            .catch(error => console.log(error));
        } else {
            const errorsArray = errors.array();
            res.render('admin/addAdmin', {
                title: 'Añadir administrador',
                userId: null,
                errors: errorsArray,
                capitalizeFirstLetter
            });
        }
    }
}

module.exports = controller;
