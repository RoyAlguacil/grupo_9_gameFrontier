const fs = require('fs');
const path = require('path');

// ************ Function to Read an HTML File ************
function readHTML (fileName) {
	let filePath = path.join(__dirname, `/../views/${fileName}.html`);
	let htmlFile = fs.readFileSync(filePath, 'utf-8');
	return htmlFile;
}

const controller = {
	root: (req, res) => {
		let html = readHTML('index');
		res.send(html);
	},	
	detail: (req, res) => {
		let html = readHTML('productDetail');
		res.send(html);
	},
	formulario: (req, res) => {
		let formulario = readHTML('formulario');
		res.send(formulario);
	},
	productCart: (req, res) => {
		let html = readHTML('productCart');
		res.send(html);
	}
};

module.exports = controller;
