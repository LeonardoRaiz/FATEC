using System.ComponentModel.DataAnnotations;

namespace ApiCatalogo.DTO;

public class ProdutoDtoUpdateRequest : IValidatableObject
{
    [Range(1, 9999, ErrorMessage = "Estoque de estar entre 1 e 9999")]
    public float Estoque { get; set; }
    
    public DateTime DataCadastro { get; set; }
    
    public IEnumerable<ValidationResult> Validate(ValidationContext validationContext)
    {
        if (DataCadastro.Date <= DateTime.Now.Date)
        {
            yield return new ValidationResult("A data deve ser maior que a data atual",
                new[] { nameof(this.DataCadastro) });
        }
    }
}