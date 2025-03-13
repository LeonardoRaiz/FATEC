using ApiCatalogo.Models;

namespace ApiCatalogo.Repositories;

public interface ICategoriaRepository
{
    //implementação flexivel
    IEnumerable<Categoria> GetCategorias();
    Categoria GetCategoria(int id);
    Categoria Create(Categoria categoria);
    Categoria Update(Categoria categoria);
    Categoria Delete(int id);
}