class CatalogoDTOResponse {
    constructor(catalogo) {
        this.id = catalogo.id;
        this.nome = catalogo.nome;
        if (catalogo.produtos) {
            this.produtos = catalogo.produtos.map(produto => {
                return {
                    id: produto.id,
                    nome: produto.nome,
                    preco: produto.preco
                }
            })
        }
    }
}

module.exports = CatalogoDTOResponse;