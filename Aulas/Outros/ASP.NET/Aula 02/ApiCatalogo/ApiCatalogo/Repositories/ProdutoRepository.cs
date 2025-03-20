using ApiCatalogo.Context;
using ApiCatalogo.Models;
using ApiCatalogo.Pagination;

namespace ApiCatalogo.Repositories;

public class ProdutoRepository : Repository<Produto>,  IProdutoRepository
{
    public ProdutoRepository(AppDbContext context) : base(context)
    {
        // _context = context;
    }

    public IEnumerable<Produto> GetProdutos(ProdutosParameters produtosParameters)
    {
        return GetAll()
            .OrderBy(p => p.Nome)
            .Skip((produtosParameters.PageNumber - 1) * produtosParameters.PageSize)
            .Take(produtosParameters.PageSize).ToList();
    }
    
    public IEnumerable<Produto> GetProdutosPorCategoria(int id)
    {
        return GetAll().Where(c => c.CategoriaId == id);
    }
    
    // public IQueryable<Produto> GetProdutos()
    // {
    //     return _context.Produtos;
    // }
    //
    // public Produto GetProduto(int id)
    // {
    //     var produto = _context.Produtos.FirstOrDefault(p => p.ProdutoId == id);
    //     if (produto is null)
    //     {
    //         throw new InvalidOperationException("Produto é null");
    //     }
    //     
    //     return produto;
    // }
    //
    // public Produto Create(Produto produto)
    // {
    //     if (produto is null)
    //     {
    //         throw new InvalidOperationException("Produto é null");
    //     }
    //
    //     _context.Produtos.Add(produto);
    //     _context.SaveChanges();
    //     return produto;
    // }
    //
    // public bool Update(Produto produto)
    // {
    //     if (produto is null)
    //     {
    //         throw new InvalidOperationException("Produto é null");
    //     }
    //
    //     if (_context.Produtos.Any(p => p.ProdutoId == produto.ProdutoId))
    //     {
    //         _context.Produtos.Update(produto);
    //         _context.SaveChanges();
    //         return true;
    //     }
    //     return false;
    // }
    //
    // public bool Delete(int id)
    // {
    //     var produto = _context.Produtos.Find(id);
    //     if (produto is not null)
    //     {
    //         _context.Produtos.Remove(produto);
    //         _context.SaveChanges();
    //         return true;
    //     }
    //
    //     return false;
    // }
    
}