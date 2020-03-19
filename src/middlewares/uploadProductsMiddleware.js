const multer = require('multer');
const path = require('path');

const diskStorage = multer.diskStorage({
	destination: (req, file, cb) => {
		let productFolderPath = path.join(__dirname, '../../public/images/multer');		
		cb(null, productFolderPath);
	},
	filename: (req, file, cb) => {
console.log(file);

		let productName = file.originalname.replace(/ /g, '-').toLowerCase();
		let finalName = productName + '-' + Date.now() + path.extname(file.originalname);
		cb(null, finalName);
	}
});

const uploadProduct = multer({ storage: diskStorage });

module.exports = uploadProduct;