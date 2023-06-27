var express = require('express');
const bodyParser = require('body-parser');
var app = express();
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
    extended: true
}));
var path = require('path');
const http = require('http').createServer(app);


var cookieParser = require('cookie-parser');
const fileUpload = require('express-fileupload');
var logger = require('morgan');
var createError = require('http-errors');

var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');



app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');

app.use('/', indexRouter);
app.use('/users', usersRouter);

try{
  app.use(function(req, res, next) {
    console.log("kdfjkdsk jdsfkjdskfjd============>>",req, res,next);
    // return
    next(createError(404));
  });
}catch(error){
  console.log("kdfjkdsk jdsfkjdskfjd============>>",error);

}


http.listen(8809, function () {
  console.log('Node app is running on port 8809');
});

module.exports = app;
