class CatalogoDtoResponse {
    constructor(catalogo) {
        this.id = catalogo.id;
        this.nome = catalogo.nome;
        if (catalogo.produtos) {
            this.produtos = catalogo.produtos.map(produto => ({
                id: produto.id,
                nome: produto.nome,
                preco: produto.preco
            }));
        }
    }
}
module.exports = CatalogoDtoResponse;