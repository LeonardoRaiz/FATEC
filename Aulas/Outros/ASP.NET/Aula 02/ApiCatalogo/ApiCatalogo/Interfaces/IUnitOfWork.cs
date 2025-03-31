namespace ApiCatalogo.Repositories;

public interface IUnitOfWork
{
    IProdutoRepository ProdutoRepository { get; }
    ICategoriaRepository CategoriaRepository { get; }

    Task CommitAsync();
}