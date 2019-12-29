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
		/*let html = readHTML('index');*/
		res.render('index');
	},	
	detail: (req, res) => {
		/*let html = readHTML('productDetail');*/
		res.render('productDetail');
	},
	register: (req, res) => {
		/*let formulario = readHTML('register');*/
		res.render('register');
	},
	productCart: (req, res) => {
		/*let html = readHTML('productCart');*/
		res.render('productCart');
	}
};

module.exports = controller;
