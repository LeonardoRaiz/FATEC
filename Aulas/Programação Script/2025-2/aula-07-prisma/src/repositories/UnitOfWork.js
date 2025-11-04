const { PrismaClient } = require('@prisma/client')
const ProdutoRepository = require('./ProdutoRepository')
const CatalogoRepository = require('./CatalagoRepository')
const IUnitOfWork = require('../interfaces/IUnitOfWork')

class UnitOfWork extends IUnitOfWork {
    constructor() {
        super()
        this.prisma = new PrismaClient()
        this.produtoRepository = new ProdutoRepository(this.prisma)
        this.catalogoRepository = new CatalogoRepository(this.prisma)
    }

    get produtos() {
        return this.produtoRepository
    }

    get catalogos() {
        return this.catalogoRepository
    }

    disconnect() {
        this.prisma.$disconnect()
    }
}

module.exports = UnitOfWork;
