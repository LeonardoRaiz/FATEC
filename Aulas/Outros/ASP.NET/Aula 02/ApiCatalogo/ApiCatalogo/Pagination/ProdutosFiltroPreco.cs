namespace ApiCatalogo.Pagination;

public class ProdutosFiltroPreco : QueryStringParameters
{
    public decimal? Preco { get; set; }
    public string? PrecoCriterio { get; set; }
}