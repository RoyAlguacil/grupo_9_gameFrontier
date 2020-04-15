module.exports = (req, res, next) => {
    console.log(req.session.userId);
    if (req.session.userId) {
        return res.redirect('/');
    }
    next();
}
