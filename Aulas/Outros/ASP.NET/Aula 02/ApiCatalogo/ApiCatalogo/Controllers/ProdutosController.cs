using ApiCatalogo.Context;
using ApiCatalogo.DTO;
using ApiCatalogo.Models;
using ApiCatalogo.Pagination;
using ApiCatalogo.Repositories;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.JsonPatch;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;
using Newtonsoft.Json;

namespace ApiCatalogo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProdutosController : ControllerBase
    {

        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;
        
        //Primeiro metodo Action GET
        public ProdutosController(IUnitOfWork unitOfWork, IMapper mapper)
        {
            _unitOfWork = unitOfWork;
            _mapper = mapper;
        }

       

        [HttpGet]
        public ActionResult<IEnumerable<ProdutoDTO>> Get()
        {
            var produtos = _unitOfWork.ProdutoRepository.GetAll();
            if (produtos is null)
            {
                return NotFound();
            }
            
            var produtosDto = _mapper.Map<IEnumerable<ProdutoDTO>>(produtos);
            return Ok(produtosDto);

        }
        
        //Segundo metodo Action GET ID
        [HttpGet("{id:int:min(1)}", Name="ObterProduto")] //Restrição de rotas
        public ActionResult<ProdutoDTO> Get(int id)
        {
            var produto = _unitOfWork.ProdutoRepository.Get(p => p.ProdutoId == id);
            if (produto is null)
            {
                return NotFound("Produto não encontrado...");
            }

            var produtoDto = _mapper.Map<ProdutoDTO>(produto);
            return Ok(produtoDto);

        }
        

        
        //Terceiro metodo Action POST
        [HttpPost]
        public ActionResult<ProdutoDTO> Post(ProdutoDTO produtoDto)
        {
            if (produtoDto is null)
            {
                return BadRequest();
            }

            var produto = _mapper.Map<Produto>(produtoDto);
            
            var novoProduto = _unitOfWork.ProdutoRepository.Create(produto);
            _unitOfWork.Commit();
            
            var novoProdutoDto = _mapper.Map<ProdutoDTO>(novoProduto);
            return new CreatedAtRouteResult("ObterProduto", new { id = novoProdutoDto.ProdutoId }, novoProdutoDto);
        }

        [HttpPatch("{id}/UpdatePartial")]
        public ActionResult<ProdutoDtoUpdateResponse> Patch(int id,
            JsonPatchDocument<ProdutoDtoUpdateRequest> patchProdutoDTO)
        {
            if (patchProdutoDTO is null || id <= 0)
            {
                return BadRequest();
            }

            var produto = _unitOfWork.ProdutoRepository.Get(c => c.ProdutoId == id);

            if (produto is null)
            {
                return NotFound();
            }

            var produtoUpdateRequest = _mapper.Map<ProdutoDtoUpdateRequest>(produto);
            
            patchProdutoDTO.ApplyTo(produtoUpdateRequest, ModelState);

            if (!ModelState.IsValid || TryValidateModel(produtoUpdateRequest))
            {
                return BadRequest(ModelState);
            }

            _mapper.Map(produtoUpdateRequest, produto);
            _unitOfWork.ProdutoRepository.Update(produto);
            _unitOfWork.Commit();

            return Ok(_mapper.Map<ProdutoDtoUpdateResponse>(produto));
        }
        
        //Quarto metodo Action PUT
        [HttpPut("{id:int}")]
        public ActionResult<ProdutoDTO> Put(int id, ProdutoDTO produtoDto)
        {
            if (id != produtoDto.ProdutoId)
            {
                return BadRequest();
            }
            var produto = _mapper.Map<Produto>(produtoDto);
            var produtoAtualizado = _unitOfWork.ProdutoRepository.Update(produto);
            _unitOfWork.Commit();
            var novoProdutoDto = _mapper.Map<ProdutoDTO>(produtoAtualizado);
            return Ok(novoProdutoDto);
        }
        
        //Quinta metodo Action DELETE
        [HttpDelete("{id:int}")]
        public ActionResult<ProdutoDTO> Delete(int id)
        {
            var produto = _unitOfWork.ProdutoRepository.Get(p => p.ProdutoId == id);
            if (produto is null)
            {
                return NotFound("Produto não encontrado...");
            }

            var produtoDeletado = _unitOfWork.ProdutoRepository.Delete(produto);
            _unitOfWork.Commit();
            
            var produtoDeletadoDto = _mapper.Map<ProdutoDTO>(produtoDeletado);
            return Ok(produtoDeletadoDto);
        }

        [HttpGet("categorias/{id}")]
        public ActionResult<IEnumerable<ProdutoDTO>> GetProdutosCategoria(int id)
        {
            var produtos = _unitOfWork.ProdutoRepository.GetProdutosPorCategoria(id);
            if (produtos is null)
            {
                return NotFound();
            }

            var produtosDto = _mapper.Map<IEnumerable<ProdutoDTO>>(produtos);
            return Ok(produtosDto);
        }

        [HttpGet("pagination")]
        public ActionResult<IEnumerable<ProdutoDTO>> GetProdutos([FromQuery] ProdutosParameters produtosParameters)
        {
            var produtos = _unitOfWork.ProdutoRepository.GetProdutos(produtosParameters);
            var metadata = new
            {
                produtos.TotalCount,
                produtos.PageSize,
                produtos.CurrentPage,
                produtos.TotalPages,
                produtos.HasNext,
                produtos.HasPrevious
            };

            Response.Headers.Append("X-Pagination", JsonConvert.SerializeObject(metadata));
            var produtosDto = _mapper.Map<IEnumerable<ProdutoDTO>>(produtos);
            return Ok(produtosDto);
        }
        
        [HttpGet("filter/preco/pagination")]
        public ActionResult<IEnumerable<ProdutoDTO>> GetProdutosFilterPreco([FromQuery] ProdutosFiltroPreco
            produtosFilterParameters)
        {
            var produtos = _unitOfWork.ProdutoRepository.GetProdutosFiltroPreco(produtosFilterParameters);
            return ObterProdutos(produtos);
        }
        private ActionResult<IEnumerable<ProdutoDTO>> ObterProdutos(PagedList<Produto> produtos)
        {
            var metadata = new
            {
                produtos.TotalCount,
                produtos.PageSize,
                produtos.CurrentPage,
                produtos.TotalPages,
                produtos.HasNext,
                produtos.HasPrevious
            };

            Response.Headers.Append("X-Pagination", JsonConvert.SerializeObject(metadata));
            var produtosDto = _mapper.Map<IEnumerable<ProdutoDTO>>(produtos);
            return Ok(produtosDto);
        }
    }
}
