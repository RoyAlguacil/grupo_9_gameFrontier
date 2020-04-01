const logMiddleware = (req, res, next) => {
  if (req.session.userId != undefined) {
    return res.redirect('/');
  }
  next();
};

module.exports = logMiddleware;
