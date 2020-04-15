module.exports = (req, res, next) => {
    !req.session.cart ? req.session.cart = [] : req.session.cart;
    if (typeof req.session.userId === "undefined") {
        res.redirect('/users/loginForm');
    } else {
        next();
    }
};
