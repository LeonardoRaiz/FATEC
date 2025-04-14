using System.ComponentModel.DataAnnotations;

namespace ApiCatalogo.DTO;

public class RegisterModel
{
    [Required(ErrorMessage = "Informe o user Name")]
    public string? UserName { get; set; }
    
    [EmailAddress]
    [Required(ErrorMessage = "Informe o e-mail")]
    public string? Email { get; set; }
    
    [Required(ErrorMessage = "Informe a senha")]
    public string? Password { get; set; }
}