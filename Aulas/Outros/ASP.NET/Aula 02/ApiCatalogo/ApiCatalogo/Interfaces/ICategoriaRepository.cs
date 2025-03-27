using ApiCatalogo.Models;
using ApiCatalogo.Pagination;

namespace ApiCatalogo.Repositories;

public interface ICategoriaRepository : IRepository<Categoria>
{
    PagedList<Categoria> GetCategorias(CategoriasParameters categoriaParameters);
    PagedList<Categoria> GetCategoriasFiltroNome(CategoriasFiltroNome categoriasParams);
}