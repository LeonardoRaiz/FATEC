using ApiCatalogo.Models;
using ApiCatalogo.Pagination;
using X.PagedList;

namespace ApiCatalogo.Repositories;

public interface ICategoriaRepository : IRepository<Categoria>
{
    Task<IPagedList<Categoria>> GetCategoriasAsync(CategoriasParameters categoriaParameters);
    Task<IPagedList<Categoria>> GetCategoriasFiltroNomeAsync(CategoriasFiltroNome categoriasParams);
    
}