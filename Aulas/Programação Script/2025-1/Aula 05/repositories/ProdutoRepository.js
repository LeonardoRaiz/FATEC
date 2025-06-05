const Repository = require('./Repository');

class ProdutoRepository extends Repository {
    constructor(prisma) {
        super(prisma.produto);
    }
}
module.exports = ProdutoRepository;