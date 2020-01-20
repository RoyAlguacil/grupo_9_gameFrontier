const fs = require("fs");
const path = require("path");
const bcrypt = require("bcrypt");

const rutaProductos = path.join(__dirname, "../data/products.json");
const rutaUsers = path.join(__dirname, "../data/users.json");

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

const getAllUsers = () => {
	let usersJson = fs.readFileSync(rutaUsers, "utf-8");
	let content;
	if (usersJson == "") {
		content = [];
	} else {
		content = JSON.parse(usersJson);
	}
	return content;
};

const getProduct = (id) => {
	const productosJson = fs.readFileSync(rutaProductos, "utf-8");
	const content = JSON.parse(productosJson);

	let producto = content.filter(pro => {
		return pro.id == id;
	})

	return producto = producto[0];
};

const deleteProduct = (id) => {
	const productosJson = fs.readFileSync(rutaProductos, "utf-8");
	const content = JSON.parse(productosJson);

	const producto = content.filter(pro => {
		return pro.id !== parseInt(id);
	})

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

const generateUsersId = () => {
	let users = getAllUsers();
	if (users.length == 0) {
		return 1;
	}
	let ultimoUser = users.pop();
	return ultimoUser.id + 1;
};

const guardaProducto = bodyProducto => {
	let products = getAllProducts();
	products.push(bodyProducto);
	fs.writeFileSync(rutaProductos, JSON.stringify(products, null, " "));
};

const guardaUser = bodyUser => {
	let users = getAllUsers();
	users.push(bodyUser);
	fs.writeFileSync(rutaUsers, JSON.stringify(users, null, " "));
};

const controller = {
	root: (req, res) => {
		res.render("index", {
			title: "Home page"
		});
	},
	productos: (req, res) => {
		const id = generateId();
		guardaProducto({
			id,
			image: req.file ? req.file.filename : null,
			...req.body
		});

		res.render("catalog", {
			title: "Productos",
			productos: getAllProducts()
		});
	},
	detail: (req, res) => {
		const id = req.params.id;

		const producto = getProduct(id);
		console.log(producto)

		res.render("productDetail", {
			title: "Detalle de producto",
			producto
		});
	},
	update: (req, res) => {
		const id = req.params.id;
		const producto = getProduct(id);

		res.render("productLoad", {
			title: "Edición de Producto",
			producto
		});
	},
	delete: (req, res) => {
		const id = req.params.id;
		let filtrados = deleteProduct(id);
		let jsonFiltrados = JSON.stringify(filtrados);

		fs.writeFileSync(rutaProductos, jsonFiltrados, "utf-8");
		const productos = getAllProducts();

		res.render('catalog', {
			title: "Productos",
			productos: productos
		})
	},
	formRegister: (req, res) => {
		res.render('register', {title: "Registro"});
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
			email: req.body.email
		};

		guardaUser(userFinalData);

		res.render('index', {title: "Home page"});
	},
	productCart: (req, res) => {
		res.render("productCart", {
			title: "Carrito de compras"
		});
	},
	productLoad: (req, res) => {
		res.render("productLoad", {
			title: "Carga de Producto"
		});
	}
};

module.exports = controller;