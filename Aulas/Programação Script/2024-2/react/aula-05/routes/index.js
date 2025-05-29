const express = require('express');
const routes = express.Router();

const ProdutoController = require('../controllers/ProdutoController');
const CatalogoController = require('../controllers/CatalogoController');

routes.post('/produtos', ProdutoController.create);
routes.get('/produtos', ProdutoController.list);

routes.post('/catalogos', CatalogoController.create);
routes.get('/catalogos', CatalogoController.list);

module.exports = routes;