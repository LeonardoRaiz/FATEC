const IRepository = require('../interfaces/IRepository');

class GenericRepository extends IRepository {
    constructor(model) {
        super();
        this.model = model;
    }

    async create(data) {
        return this.model.create({ data });
    }

    async findAll(include = undefined) {
        return this.model.findMany({ include });
    }

    async findById(id, include = undefined) {
        return this.model.findUnique({ where: { id }, include });
    }

    async update(id, data) {
        return this.model.update({ where: { id }, data });
    }

    async delete(id) {
        return this.model.delete({ where: { id } });
    }
}

module.exports = GenericRepository;