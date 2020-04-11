const Swal = require('sweetalert2');

module.exports = (req, res, next) => {
    !req.session.cart ? req.session.cart = [] : req.session.cart;

    // Todo: hay que avisar al user
    if (typeof req.session.userId === "undefined") {
        Swal.fire({
            position: 'top-end',
            icon: 'success',
            title: 'Your work has been saved',
            showConfirmButton: false,
            timer: 1500
        });
        setTimeout(() => {
            res.redirect('/');
        }, 1500);
    } else {
        next();
    }
};