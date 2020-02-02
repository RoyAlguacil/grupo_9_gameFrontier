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

const updateProduct = (id, producto) => {
	console.log('23432', producto)
	let products = getAllProducts();
	products.forEach(item => {
		if (item.id == id) {
			item.image = producto.image,
				item.nombre = producto.nombre,
				item.categoria = producto.categoria,
				item.subcategoria = producto.subcategoria,
				item.cantidad = producto.cantidad,
				item.codigo = producto.codigo,
				item.valor = producto.valor,
				item.descripcion = producto.descripcion
		}
	})
	//fs.writeFileSync(rutaProductos, JSON.stringify(products, null, " "));
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
		res.render("catalog", {
			title: "Productos",
			productos: getAllProducts()
		});
	},
	addProducto: (req, res) => {
		const id = generateId();
		guardaProducto({
			id,
			image: req.file ? req.file.filename : null,
			...req.body
		});
		const productos = getAllProducts();

		res.render('catalog', {
			title: 'Productos',
			productos: productos
		});
	},
	detail: (req, res) => {
		const id = req.params.id;

		const producto = getProduct(id);

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
	updateProduct: (req, res) => {
		console.log(req.body)
		const id = req.params.id;
		const producto = req.body;

		updateProduct(id, producto);

		res.render("catalog", {
			title: "Productos",
			productos: getAllProducts()
		});
	},
	delete: (req, res) => {
		const id = req.params.id;
		let filtrados = deleteProduct(id);
		let jsonFiltrados = JSON.stringify(filtrados);

		fs.writeFileSync(rutaProductos, jsonFiltrados, "utf-8");

		res.redirect('/productos');
	},
	productCart: (req, res) => {
		res.render("productCart", {
			title: "Carrito de compras"
		});
	},
	productLoad: (req, res) => {
		res.render("productLoad", {
			title: "Carga de Producto",
			producto: null
		});
	},
	// Usuarios
	formRegister: (req, res) => {
		res.render('register', {
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
			email: req.body.email
		};



		guardaUser(userFinalData);

		res.redirect('/');

		res.send('Hola');
	},
};

module.exports = controller;