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
            adminId: null
        });
    },
    login: (req, res) => {
        console.log(req.body);
        // Busco al admin por email
        Admins
        .findOne({
            where:{email: req.body.email}
        })
        .then(admin => {
            // Valido si existe el usuario
            if (admin != undefined) {
                console.log('hay user');
                // Hasheo la contraseña
                if (bcrypt.compareSync(req.body.password, admin.password)) {
                    console.log('coinciden pass');
                    // Borramos la contraseña del objeto admin
                    delete admin.password;

                    // Pasamos al usuario a session
                    req.session.adminId = admin.id;
                    req.session.userName = admin.nombre;
                    req.session.avatar = 'admin.avatar';

                    console.log(req.session.adminId)
                    console.log(req.session.userName)
                    console.log(req.session.avatar)

                    // Redirección
                    return res.redirect('/');
                } else {
                    console.log('no coinciden pass');
                    // Si la contraseña falla
                    return res.render('admin/loginForm', {
                        title: 'Login',
                        adminId: null,
                    });
                }
            } else {
                console.log('no hay user');
                return res.render('admin/loginForm', {
                    title: 'Login',
                    adminId: null,
                });
            }
        })
        .catch(error => console.log(error));
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
