using ApiCatalogo.Models;
using ApiCatalogo.Pagination;
using X.PagedList;

namespace ApiCatalogo.Repositories;

public interface IProdutoRepository : IRepository<Produto>
{
    //IEnumerable<Produto> GetProdutos(ProdutosParameters produtosParameters);
    Task<IPagedList<Produto>> GetProdutosAsync(ProdutosParameters produtosParameters);
    Task<IPagedList<Produto>> GetProdutosFiltroPrecoAsync(ProdutosFiltroPreco produtosFiltroPreco);
    Task<IEnumerable<Produto>> GetProdutosPorCategoriaAsync(int id);
    
    
}