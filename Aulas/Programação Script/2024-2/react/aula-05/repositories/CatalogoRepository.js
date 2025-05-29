const Repository = require('./Repository');

class CatalogoRepository extends Repository {
    constructor(prisma) {
        super(prisma.catalogo);
    }
}

module.exports = CatalogoRepository;CatalogoRepository;