using ApiCatalogo.Context;
using ApiCatalogo.Models;
using ApiCatalogo.Pagination;
using X.PagedList;

namespace ApiCatalogo.Repositories;

public class ProdutoRepository : Repository<Produto>,  IProdutoRepository
{
    public ProdutoRepository(AppDbContext context) : base(context)
    {
        // _context = context;
    }
    
    public async Task<IPagedList<Produto>> GetProdutosAsync(ProdutosParameters produtosParameters)
    {
        var produtos = await GetAllAsync();
        var produtosOrdenados = produtos.OrderBy(p => p.ProdutoId).AsQueryable();
        var resultado = await produtosOrdenados.ToPagedListAsync(produtosParameters.PageNumber, produtosParameters.PageSize);
        return resultado;
    }

    public async Task<IPagedList<Produto>> GetProdutosFiltroPrecoAsync(ProdutosFiltroPreco produtosFiltroPreco)
    {
        var produtos = await GetAllAsync();
        if (produtosFiltroPreco.Preco.HasValue && !string.IsNullOrEmpty(produtosFiltroPreco.PrecoCriterio))
        {
            if (produtosFiltroPreco.PrecoCriterio.Equals("maior", StringComparison.OrdinalIgnoreCase))
            {
                produtos = produtos.Where(p => p.Preco > produtosFiltroPreco.Preco.Value).OrderBy(p => p.Preco);
            }
            else if (produtosFiltroPreco.PrecoCriterio.Equals("menor", StringComparison.OrdinalIgnoreCase))
            {
                produtos = produtos.Where(p => p.Preco < produtosFiltroPreco.Preco.Value).OrderBy(p => p.Preco);
            }
            else if (produtosFiltroPreco.PrecoCriterio.Equals("igual", StringComparison.OrdinalIgnoreCase))
            {
                produtos = produtos.Where(p => p.Preco == produtosFiltroPreco.Preco.Value).OrderBy(p => p.Preco);
            }
        }
        var produtosFiltrados = await produtos.ToPagedListAsync(produtosFiltroPreco.PageNumber,
            produtosFiltroPreco.PageSize);
        
        return produtosFiltrados;
    }

    public async Task<IEnumerable<Produto>> GetProdutosPorCategoriaAsync(int id)
    {
        var produtosCategoras = await GetAllAsync();
        return produtosCategoras.Where(c => c.CategoriaId == id);
    }
    
    
    
}