const fs = require("fs");
const path = require("path");
const bcrypt = require("bcrypt");
const { validationResult } = require('express-validator');

// Users File Path
const usersFilePath = path.join(__dirname, "../data/users.json");

// Helper Functions
function getAllUsers() {
  let usersFileContent = fs.readFileSync(usersFilePath, "utf-8");
  let usersArray;
  if (usersFileContent == "") {
    usersArray = [];
  } else {
    usersArray = JSON.parse(usersFileContent);
  }
  return usersArray;
}

function generateId() {
  let users = getAllUsers();
  if (users.length == 0) {
    return 1;
  }
  let lastUser = users.pop();
  return lastUser.id + 1;
}

const generateUsersId = () => {
  let users = getAllUsers();
  if (users.length == 0) {
    return 1;
  }
  let ultimoUser = users.pop();
  return ultimoUser.id + 1;
};

function storeUser(userData) {
  let users = getAllUsers();
  users.push(userData);
  fs.writeFileSync(usersFilePath, JSON.stringify(users, null, " "));
}

const guardaUser = bodyUser => {
  let users = getAllUsers();
  users.push(bodyUser);
  fs.writeFileSync(usersFilePath, JSON.stringify(users, null, " "));
};

function getUserByEmail(email) {
  let allUsers = getAllUsers();
  let userFind = allUsers.find(oneUser => oneUser.email == email);

  return userFind;
}

const controller = {
  storeUser: (req, res) => {
    // Hasheo la contraseña
    req.body.user_password = bcrypt.hashSync(req.body.user_password, 11);
    // Genero la data del usuario
    let newUserData = {
      id: generateId(),
      avatar: req.file ? req.file.filename : null,
      ...req.body
    };
    // Guardo al usuario en el JSON
    storeUser(newUserData);
    // Redirección
    res.redirect("/");
  },
  loginForm: (req, res) => {
    res.render("users/loginForm", {
      title: "Pagina Login",
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
      } return false;
    };

    // Busco al usuario por email
    let userToLogin = getUserByEmail(req.body.user_email);

    // Valido si existe el usuario
    if (userToLogin != undefined) {
      if (bcrypt.compareSync(req.body.user_password, userToLogin.password)) {
        // Borramos la contraseña del objeto usuario
        delete userToLogin.password;

        // Pasamos al usuario a session
        req.session.userId = userToLogin.id;

        if (req.body.recordame) {
          res.cookie("userCookie", userToLogin.id, {
            maxAge: 180000
          });
        }

        // Redirección
        res.redirect("/");
      } else {
        // Si la contraseña falla
        res.render("users/loginForm", {
          title: "Login",
          userId: req.session.userId,
          errors: errors.errors,
          errorAndMessage,
        });
      }
    } else {
      res.render("users/loginForm", {
        title: "Login",
        userId: req.session.userId,
        errors: errors.errors,
        errorAndMessage
      });
    }
  },
  // Usuarios
  formRegister: (req, res) => {
    res.render("register", {
      title: "Registro"
    });
  },
  register: (req, res) => {
    let userFinalData = {
      id: generateUsersId(),
      usuario: req.body.usuario,
      password: bcrypt.hashSync(req.body.password, 10),
      nombre: req.body.nombre,
      telefono: req.body.telefono,
      provincia: req.body.provincia,
      localidad: req.body.localidad,
      dni: req.body.dni,
      email: req.body.email,
      image: req.file ? req.file.filename : null
    };

    guardaUser(userFinalData);

    req.session.userId = userFinalData.id;

    res.cookie("userCookie", userFinalData.id, {
      maxAge: 60000 * 60
    });

    res.render("index", {
      userId: req.session.userId,
      title: "Home Page"
    });
  },
  logout: (req, res) => {
    // Destruimos la session
    req.session.destroy();
    // Pisar la cookie
    res.cookie("userCookie", null, {
      maxAge: -1
    });
    // Redirección
    res.render("index", { userId: null, title: 'Home Page' });
  },
};

module.exports = controller;
