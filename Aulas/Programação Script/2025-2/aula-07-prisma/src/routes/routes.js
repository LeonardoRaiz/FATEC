const express = require('express')
const router = express.Router()
const ProdutoController = require('../controllers/ProdutoContoller')
const CatalogoController = require('../controllers/CatalogoController')

//Produtos
router.post('/produtos', ProdutoController.create());
router.get('/produtos', ProdutoController.listAll());
router.get('/produtos/:id', ProdutoController.listById());
router.put('/produtos/:id', ProdutoController.update());
router.delete('/produtos/:id', ProdutoController.delete());
//Catalogos
router.post('/catalogos', CatalogoController.create());
router.get('/catalogos', CatalogoController.listAll());
router.get('/catalogos/:id', CatalogoController.listById());
router.put('/catalogos/:id', CatalogoController.update());
router.delete('/catalogos/:id', CatalogoController.delete());

module.exports = router