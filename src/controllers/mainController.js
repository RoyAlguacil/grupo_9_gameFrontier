const fs = require("fs");
const path = require("path");
const bcrypt = require("bcrypt");

const rutaProductos = path.join(__dirname, "../data/products.json");

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

const getProduct = (id) => {
	const productosJson = fs.readFileSync(rutaProductos, "utf-8");
	const content = JSON.parse(productosJson);

	let producto = content.filter(pro => {
		return pro.id == id;
	})

	return producto = producto[0];
};

const generateId = () => {
	let products = getAllProducts();
	if (products.length == 0) {
		return 1;
	}
	let ultimoProducto = products.pop();
	return ultimoProducto.id + 1;
};

const guardaProducto = bodyProducto => {
	let products = getAllProducts();
	products.push(bodyProducto);
	fs.writeFileSync(rutaProductos, JSON.stringify(products, null, " "));
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
	register: (req, res) => {
		res.render("register", {
			title: "Registro"
		});
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