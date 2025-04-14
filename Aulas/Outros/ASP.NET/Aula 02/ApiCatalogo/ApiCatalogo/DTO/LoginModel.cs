using System.ComponentModel.DataAnnotations;

namespace ApiCatalogo.DTO;

public class LoginModel
{
    [Required(ErrorMessage = "Informe o user Name")]
    public string? UserName { get; set; }
    
    [Required(ErrorMessage = "Informe a Senha")]
    public string? Password { get; set; }
}