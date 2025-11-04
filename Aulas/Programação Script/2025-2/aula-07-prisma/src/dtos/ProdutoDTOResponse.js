class ProdutoDTOResponse {
    constructor(produto) {
        this.id = produto.id;
        this.nome = produto.nome;
        this.preco = produto.preco;
        if (produto.catalogo) {
            this.catalogo = {
                nome: produto.catalogo.nome
            }
        }
    }
}

module.exports = ProdutoDTOResponse;