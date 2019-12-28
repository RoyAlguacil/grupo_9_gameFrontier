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
		res.render('index');
	},	
	detail: (req, res) => {
		res.render('productDetail');
	},
	productCart: (req, res) => {
		res.render('productCart');
	}
};

module.exports = controller
