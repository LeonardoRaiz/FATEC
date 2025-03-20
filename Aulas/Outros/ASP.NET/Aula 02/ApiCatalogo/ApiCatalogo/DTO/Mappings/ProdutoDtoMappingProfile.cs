using ApiCatalogo.Models;
using AutoMapper;


namespace ApiCatalogo.DTO.Mappings;

public class ProdutoDtoMappingProfile : Profile
{
    public ProdutoDtoMappingProfile()
    {
        CreateMap<Produto, ProdutoDTO>().ReverseMap();
        //CreateMap<Categoria, CategoriaDTO>().ReverseMap();
        CreateMap<Produto, ProdutoDtoUpdateRequest>().ReverseMap();
        CreateMap<Produto, ProdutoDtoUpdateResponse>().ReverseMap();
    }
}