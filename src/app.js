// ************ Require's ************
const createError = require('http-errors');
const cookieParser = require('cookie-parser');
const express = require('express');
const session = require('express-session');
const method = require('method-override');
const logger = require('morgan');
const path = require('path');
const cookieMiddleware = require('./middlewares/cookieMiddleware');

// ************ express() - (don't touch) ************
const app = express();

app.use((req, res, next) => {
  res.header("Access-Control-Allow-Origin", "*");
  res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
  res.header("Access-Control-Allow-Methods", "PUT,POST,GET,DELETE,OPTIONS");
  res.header("Allow", "GET, POST, OPTIONS, PUT, DELETE");
  next();
});

// ************ Middlewares - (don't touch) ************
app.use(express.static(path.join(__dirname, '../public'))); // Necesario para los archivos estáticos en el folder /public
app.use(
  express.urlencoded({
    extended: false
  })
);
app.use(logger('dev'));
app.use(express.json());
app.use(cookieParser());
app.use(session({secret: 'game-frontier', resave: false, saveUninitialized: true}));
app.use(cookieMiddleware);
app.use(method('_method'));

// ************ Template Engine - (don't touch) ************
app.set('view engine', 'ejs');
app.set('views', './src/views'); // Seteo de la ubicación de la carpeta 'views'

// ************ WRITE YOUR CODE FROM HERE ************
// ************ Route System require and use() ************
const mainRouter = require('./routes/main');
app.use('/', mainRouter);

// ************ DON'T TOUCH FROM HERE ************
// ************ catch 404 and forward to error handler ************
app.use((req, res, next) => next(createError(404)));

// ************ error handler ************

app.use((err, req, res, next) => {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.path = req.path;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});


// ************ exports app - dont'touch ************
module.exports = app;
