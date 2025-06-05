const IRepository = require('./IRepository');

class Repository extends IRepository {
    constructor(model) {
        super();
        this.model = model;
    }

    async create(data) {
        return await this.model.create({data});
    }

    async findAll(include = undefined) {
        return await this.model.findMany({ include });
    }

    async findById(id, include = undefined) {
        return await this.model.findUnique({ where: { id }, include });
    }

    async update(id, data) {
        return await this.model.update({ where: { id }, data });
    }

    async delete(id){
        return await this.model.delete({ where: { id }});
    }

}