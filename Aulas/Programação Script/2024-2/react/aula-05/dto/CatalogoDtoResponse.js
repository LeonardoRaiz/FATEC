class CatalogoDtoResponse {
    constructor(catalogo) {
        this.id = catalogo.id;
        this.nome = catalogo.nome;
        // if (catalogo.produtos) {
        //     this.produtos = catalogo.produtos.map(p => ({
        //         id: p.id,
        //         nome: p.nome,
        //         preco: p.preco
        //     }));
        // }
    }
}
module.exports = CatalogoDtoResponse;