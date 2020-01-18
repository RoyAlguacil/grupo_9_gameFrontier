const fs = require('fs');
const path = require('path');

// ************ Function to Read an HTML File ************
/* function readHTML (fileName) {
	let filePath = path.join(__dirname, `/../views/${fileName}.html`);
	let htmlFile = fs.readFileSync(filePath, 'utf-8');
	return htmlFile;
} */

const controller = {
	root: (req, res) => {
		res.render('index', { title: 'Home page' });
	},
	productos: (req, res) => {
		res.render('catalog', { title: 'Productos' });
	},
	detail: (req, res) => {
		res.render('productDetail', { title: 'Detalle de producto' });
	},
	register: (req, res) => {
		res.render('register', { title: 'Registro' });
	},
	productCart: (req, res) => {
		res.render('productCart', { title: 'Carrito de compras' });
	}
};

module.exports = controller;
