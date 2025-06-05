class ProdutoDtoResponse {
    constructor(produto) {
        this.id = produto.id;
        this.nome = produto.nome;
        this.preco = produto.preco;
        if (produto.catalogo) {
            this.catalogo = {
                nome: produto.catalogo.nome,
                id: produto.catalogo.id
            };
        }
    }
}
module.exports = ProdutoDtoResponse;