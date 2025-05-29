class ProdutoDTO {
    constructor({ id, nome, preco, catalogoId }) {
        this.id = id;
        this.nome = nome;
        this.preco = preco;
        this.catalogoId = catalogoId;
    }
}
module.exports = ProdutoDTO;