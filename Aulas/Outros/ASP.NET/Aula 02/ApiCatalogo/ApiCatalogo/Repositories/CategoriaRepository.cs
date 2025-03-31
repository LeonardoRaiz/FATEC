using ApiCatalogo.Context;
using ApiCatalogo.Models;
using ApiCatalogo.Pagination;
using Microsoft.EntityFrameworkCore;
using X.PagedList;

namespace ApiCatalogo.Repositories;

public class CategoriaRepository : Repository<Categoria>, ICategoriaRepository
{
    // private readonly AppDbContext _context;

    public CategoriaRepository(AppDbContext context) : base(context)
    { }
    
    public async Task<IPagedList<Categoria>> GetCategoriasAsync(CategoriasParameters categoriasParameters)
    {
        var categorias = await GetAllAsync();
        
        var categoriasOrdenados = categorias.OrderBy(c => c.CategoriaId).AsQueryable();
        
        var resultado =
            await categoriasOrdenados.ToPagedListAsync(categoriasParameters.PageNumber, categoriasParameters.PageSize);
        return resultado;
    }
    
    public async Task<IPagedList<Categoria>> GetCategoriasFiltroNomeAsync(CategoriasFiltroNome categoriasParams)
    {
        var categorias = await GetAllAsync();

        if (!string.IsNullOrEmpty(categoriasParams.Nome))
        {
            categorias = categorias.Where(c => c.Nome.Contains(categoriasParams.Nome));
        }

        var categoriasFiltradas = await categorias.ToPagedListAsync(categoriasParams.PageNumber, categoriasParams.PageSize);

        return categoriasFiltradas;
    }
    
}