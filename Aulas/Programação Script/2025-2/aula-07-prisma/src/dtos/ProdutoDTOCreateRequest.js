class ProdutoDTOCreateRequest {
    constructor({nome, preco, catalagoId}) {
        this.nome = nome;
        this.preco = preco;
        this.catalagoId = catalagoId;
    }
}

module.exports = ProdutoDTOCreateRequest;