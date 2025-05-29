const { PrismaClient } = require('@prisma/client');
const ProdutoRepository = require('./ProdutoRepository');
const CatalogoRepository = require('./CatalogoRepository');
const IUnitOfWork = require('../interfaces/IUnitOfWork');

class UnitOfWork extends IUnitOfWork {
    constructor() {
        super();
        this.prisma = new PrismaClient();
        this._produtos = new ProdutoRepository(this.prisma);
        this._catalogos = new CatalogoRepository(this.prisma);
    }

    get produtos() {
        return this._produtos;
    }

    get catalogos() {
        return this._catalogos;
    }

    async disconnect() {
        await this.prisma.$disconnect();
    }
}

module.exports = UnitOfWork;