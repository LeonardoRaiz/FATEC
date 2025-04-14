using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;

namespace ApiCatalogo.Services; 

public class TokenService : ITokenService
{
    public JwtSecurityToken GenerateAccessToken(IEnumerable<Claim> claims, IConfiguration configuration)
    {
        var key = configuration.GetSection("JWT").GetValue<string>("SecretKey") ?? throw new InvalidOperationException("JWT Secret Key is missing");
    }

    public string GenerateRefreshToken()
    {
        throw new NotImplementedException();
    }

    public ClaimsPrincipal GetPrincipalFromExpiredToken(string token, IConfiguration configuration)
    {
        throw new NotImplementedException();
    }
}