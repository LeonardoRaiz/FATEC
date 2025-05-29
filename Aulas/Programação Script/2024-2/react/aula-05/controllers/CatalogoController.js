const CatalogoDtoCreateRequest = require('../dto/CatalogoDtoCreateRequest');
const CatalogoDtoResponse = require('../dto/CatalogoDtoResponse');
const UnitOfWork = require('../repositories/UnitOfWork');

const uow = new UnitOfWork();

const CatalogoController = {
    async create(req, res) {
        try {
            const dto = new CatalogoDtoCreateRequest(req.body);
            const catalogo = await uow.catalogos.create(dto);
            res.status(201).json(new CatalogoDtoResponse(catalogo));
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao criar catálogo.' });
        }
    },

    async list(req, res) {
        const catalogos = await uow.catalogos.findAll({ produtos: true });
        res.json(catalogos.map(c => new CatalogoDtoResponse(c)));
    },

    async getById(req, res) {
        const { id } = req.params;
        const catalogo = await uow.catalogos.findById(Number(id), { produtos: true });
        if (!catalogo) return res.status(404).json({ erro: 'Catálogo não encontrado.' });
        res.json(new CatalogoDtoResponse(catalogo));
    },

    async update(req, res) {
        const { id } = req.params;
        try {
            const dto = new CatalogoDtoCreateRequest(req.body);
            const atualizado = await uow.catalogos.update(Number(id), dto);
            res.json(new CatalogoDtoResponse(atualizado));
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao atualizar catálogo.' });
        }
    },

    async delete(req, res) {
        const { id } = req.params;
        try {
            await uow.catalogos.delete(Number(id));
            res.status(204).send();
        } catch (err) {
            res.status(400).json({ erro: 'Erro ao excluir catálogo.' });
        }
    }
};

module.exports = CatalogoController;