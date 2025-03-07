using System.Collections.ObjectModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ApiCatalogo.Models;

[Table("Categorias")]
public class Categoria
{
    public Categoria()
    {
        Produtos = new Collection<Produto>();
    }
    
    [Key]
    public int CategoriaId { get; set; } //Id para identificar o valor único
    
    [Required]
    [StringLength(80)]
    public string? Nome { get; set; } // as propriedades por referencia tem que ser Nullable
    
    [Required]
    [StringLength(300)]
    public string? ImageUrl { get; set; }

    public ICollection<Produto>? Produtos { get; set; }
}