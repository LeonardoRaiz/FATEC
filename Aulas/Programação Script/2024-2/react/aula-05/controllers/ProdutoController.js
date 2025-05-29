const ProdutoDtoCreateRequest = require('../dto/ProdutoDtoCreateRequest');
const ProdutoDtoResponse = require('../dto/ProdutoDtoResponse');
const UnitOfWork = require('../repositories/UnitOfWork');

const uow = new UnitOfWork();

const ProdutoController = {
    async create(req, res) {
        try {
            const dto = new ProdutoDtoCreateRequest(req.body);
            const produto = await uow.produtos.create(dto);
            res.status(201).json(new ProdutoDtoResponse(produto));
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao criar produto.' });
        }
    },

    async list(req, res) {
        const produtos = await uow.produtos.findAll({ catalogo: true });
        res.json(produtos.map(p => new ProdutoDtoResponse(p)));
    },

    async getById(req, res) {
        const { id } = req.params;
        const produto = await uow.produtos.findById(Number(id), { catalogo: true });
        if (!produto) return res.status(404).json({ erro: 'Produto não encontrado.' });
        res.json(new ProdutoDtoResponse(produto));
    },

    async update(req, res) {
        const { id } = req.params;
        try {
            const dto = new ProdutoDtoCreateRequest(req.body);
            const produtoAtualizado = await uow.produtos.update(Number(id), dto);
            res.json(new ProdutoDtoResponse(produtoAtualizado));
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao atualizar produto.' });
        }
    },

    async delete(req, res) {
        const { id } = req.params;
        try {
            await uow.produtos.delete(Number(id));
            res.status(204).send();
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao excluir produto.' });
        }
    }
};

module.exports = ProdutoController;