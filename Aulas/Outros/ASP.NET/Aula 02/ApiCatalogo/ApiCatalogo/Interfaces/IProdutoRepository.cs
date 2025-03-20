using ApiCatalogo.Models;
using ApiCatalogo.Pagination;

namespace ApiCatalogo.Repositories;

public interface IProdutoRepository : IRepository<Produto>
{
    IEnumerable<Produto> GetProdutos(ProdutosParameters produtosParameters);
    IEnumerable<Produto> GetProdutosPorCategoria(int id);
}