using System.Collections.ObjectModel;

namespace ApiCatalogo.Models;

public class Categoria
{
    public Categoria()
    {
        Produtos = new Collection<Produto>();
    }
    
    public int CategoriaId { get; set; } //Id para identificar o valor único
    public string? Nome { get; set; } // as propriedades por referencia tem que ser Nullable
    public string? ImageUrl { get; set; }

    public ICollection<Produto>? Produtos { get; set; }
}