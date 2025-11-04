const Repository = require('./Repository')

class CatalagoRepository extends Repository {
    constructor(prisma) {
        super(prisma.catalogo);
    }
}

module.exports = CatalagoRepository;