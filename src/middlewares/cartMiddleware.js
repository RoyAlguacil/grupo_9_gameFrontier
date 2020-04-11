module.exports = (req, res, next) => {
    !req.session.cart ? req.session.cart = [] : req.session.cart;
    next();
};