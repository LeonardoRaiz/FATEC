const CatalogoDtoCreateRequest = require('../dtos/CatalogoDtoCreateRequest')
const CatalogoDtoResponse = require('../dtos/CatalogoDtoResponse')
const UnitOfWork = require('../repositories/UnitOfWork')

const uow = new UnitOfWork()

const CatalogoController = {
    async create(request, response) {
        const dto  = new CatalogoDtoCreateRequest(request.body)
        const catalogo = await uow.catalogos.create(dto)
        response.json(new CatalogoDtoResponse(catalogo))
    },

    async listAll(request, response) {
        const catalogos = await uow.catalogos.findAll({produtos: true})
        response.json(catalogos.map(catalogo => new CatalogoDtoResponse(catalogo)))
    },

    async listById(request, response) {
        const catalogo = await uow.catalogos.findById(Number(request.params.id), {produtos: true})
        if (!catalogo) return response.status(404).json({ message: 'Catalogo nao encontrado'});
        response.json(new CatalogoDtoResponse(catalogo))
    },

    async update(request, response) {
        const dto = new CatalogoDtoCreateRequest(request.body)
        const catalogoAtualizado = await uow.catalogos.update(Number(request.params.id), dto)
        response.json(new CatalogoDtoResponse(catalogoAtualizado))
    },

    async delete(request, response) {
        await uow.catalogos.delete(Number(request.params.id))
        response.status(204).send()
    }
}

module.exports = CatalogoController