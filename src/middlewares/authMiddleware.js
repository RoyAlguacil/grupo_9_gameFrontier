module.exports =  (req, res, next) => {
	if (req.session.userId == undefined) {
		return res.redirect('/users/loginForm');
	}
	next();
}