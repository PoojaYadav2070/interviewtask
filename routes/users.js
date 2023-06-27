var express = require('express');
var router = express.Router();
const MenuController = require("../controller/menucontroller");

router.get('/', function(req, res, next) {

  res.send('respond with a resource');
});
router.post("/add/menu",MenuController.addmenu)
router.post("/edit/detail/:id",MenuController.edit)
router.delete("/delete/detail/:id",MenuController.delete)

router.get('/menus', function(req, res, next) {

  res.render('menu');
});
module.exports = router;
