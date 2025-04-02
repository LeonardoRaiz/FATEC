using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using ApiCatalogo.Validations;
using Newtonsoft.Json;

namespace ApiCatalogo.Models;

[Table("Produtos")]
public class Produto
{
    [Key]
    public int ProdutoId { get; set; }
    
    [Required(ErrorMessage = "O nome é obrigatório")]
    [StringLength(20, ErrorMessage = "O nome deve ter entre 5 e 20 caracteres", MinimumLength = 5)]
    [PrimeiraLetraMaiuscula]
    public string? Nome { get; set; }
    
    [Required]
    [StringLength(300, ErrorMessage = "A descrição deve ter no máximo {1} caracteres")]
    public string? Descricao { get; set; }
    
    [Required]
    [Column(TypeName = "decimal(10,2)")]
    public decimal Preco { get; set; }
    
    [Required]
    [StringLength(300)]
    public string? ImageUrl { get; set; }
    public float Estoque { get; set; }
    public DateTime DataCadastro { get; set; }
    
    public int CategoriaId { get; set; }
    [JsonIgnore]
    public Categoria? Categoria { get; set; }
}