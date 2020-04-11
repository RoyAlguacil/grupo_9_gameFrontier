const bcrypt = require('bcrypt');
const { validationResult } = require('express-validator');
const db = require('../database/models');
const Usuarios = db.usuarios;

const controller = {
  loginForm: (req, res) => {
    res.render('users/loginForm', {
      title: 'Pagina Login',
      userId: null,
      loginBtn: false
    });
  },
  processLogin: (req, res) => {
    
    let errors = validationResult(req);
    
    const errorAndMessage = (field, errors) => {
      for (let oneError of errors) {
        if (oneError.param == field) {
          return oneError.msg;
        }
      }
      return false;
    };
    
    // Busco al usuario por email
    Usuarios
    .findOne({
      where:{email: req.body.user_email}
    })
    .then(usuario => {
      // Valido si existe el usuario
      if (usuario != undefined) {
        // Hasheo la contraseña
        
        if (bcrypt.compareSync(req.body.user_password, usuario.password)) {
          // Borramos la contraseña del objeto usuario
          delete usuario.password;
          
          // Pasamos al usuario a session
          req.session.userId = usuario.id;
          
          // Redirección
          res.redirect('/');
        } else {
          // Si la contraseña falla
          res.render('users/loginForm', {
            title: 'Login',
            userId: req.session.userId,
            errors: errors.errors,
            errorAndMessage,
          });
        }
      } else {   
        res.render('users/loginForm', {
          title: 'Login',
          userId: req.session.userId,
          errors: errors.errors,
          errorAndMessage
        });
      }
    })
    .catch(error => console.log(error)); 
  },
  // Usuarios
  formRegister: (req, res) => {
    if (req.session.userId) {
      res.redirect('/');
    }
    res.render('register', {
      title: 'Registro',
      userId: req.session.userId
    });
  },
  register: (req, res) => {
    let errors = validationResult(req);
    const errorAndMessage = (field, errors) => {
      for (let oneError of errors) {
        if (oneError.param == field) {
          return oneError.msg;
        }
      }
      return false;
    };
    
    if (errors.isEmpty()) {
      req.body.password = bcrypt.hashSync(req.body.password, 11);
      
      Usuarios
      .create({
        avatar: req.file ? req.file.filename : null,
        ... req.body
      })
      .then( () => {
        res.render('index', {title: 'Home Page', userId: null})
      })
      .catch(error => console.log(error))
    } else {
      res.render('register', {title:'Registro', errors: errors.array(), oldData: req.body, errorAndMessage})
    }
  },
  
  logout: (req, res) => {
    // Destruimos la session
    req.session.destroy();
    // Pisar la cookie
    res.cookie('userCookie', null, {
      maxAge: -1
    });
    // Redirección
    res.redirect('/');
  },
};

module.exports = controller;