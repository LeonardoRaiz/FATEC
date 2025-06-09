const ProdutoDtoCreateRequest = require('../dtos/ProdutoDtoCreateRequest');

const ProdutoDtoResponse = require('../dtos/ProdutoDtoResponse');

const UnitOfWork = require('../repositories/UnitOfWork');

const uow = new UnitOfWork();

const ProdutoController = {
    async create(req, res) {
        try {
            const dto = new ProdutoDtoCreateRequest(req.body);
            const produto = await uow.produtos.create(dto);
            res.status(201).json(new ProdutoDtoResponse(produto));
        } catch (error) {
            res.status(400).json(error);
        }
    },
    async list(req, res) {
        try {
            const produtos = await uow.produtos.findAll({catalogo: true});
            res.status(200).json(produtos.map(produto => new ProdutoDtoResponse(produto)));
        } catch (error) {
            res.status(400).json(error);
        }
    },
    async getById(req, res) {
        const produto = await uow.produtos.findById(req.params.id, {catalogo: true});
        if (!produto) return res.status(404).json({error: "Produto não encontrado"})
        res.status(200).json(new ProdutoDtoResponse(produto));
    },
    async update(req, res) {
        const dto = new ProdutoDtoCreateRequest(req.body);
        const produto = await uow.produtos.update(Number(req.params.id), dto);
        if (!produto) return res.status(404).json({error: "Produto não encontrado"})
        res.status(200).json(new ProdutoDtoResponse(produto));
    },
    async delete(req, res) {
        const produto = await uow.produtos.delete(Number(req.params.id));
        if (!produto) return res.status(404).json({error: "Produto não encontrado"})
        res.status(204).send();
    }
}

module.exports = ProdutoController