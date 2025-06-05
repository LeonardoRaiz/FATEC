const { PrismaClient } = require('@prisma/client');
const ProdutoRepository = require('./ProdutoRepository');
const CatalogoRepository = require('./CatalogoRepository');
const IUnitOfWork = require('../interfaces/IUnitOfWork');

class UnitOfWork extends IUnitOfWork {
    constructor() {
        super();
        this.prisma = new PrismaClient();
        this._produto = new ProdutoRepository();
        this._catalogo = new CatalogoRepository();
    }

    get produtos() {
        return this._produto;
    }
    get catalogos() {
        return this._catalogo;
    }
    async disconnect() {
        await this.prisma.$disconnect();
    }
}