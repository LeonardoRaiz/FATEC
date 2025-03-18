using ApiCatalogo.Context;
using ApiCatalogo.DTO;
using ApiCatalogo.Models;
using ApiCatalogo.Repositories;
using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.ModelBinding;
using Microsoft.EntityFrameworkCore;

namespace ApiCatalogo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ProdutosController : ControllerBase
    {

        private readonly IUnitOfWork _unitOfWork;
        private readonly IMapper _mapper;

        
        // private readonly AppDbContext _context;
        //
        // public ProdutosController(AppDbContext context)
        // {
        //     _context = context;
        // }
        //[HttpGet("{valor:alpha:lenght(5)}")] de A a Z
        
        // [HttpGet("primeiro")] 
        // [HttpGet("teste")] 
        // [HttpGet("/primeiro")] // A / ignora o padrão do roteamento
        // public ActionResult<Produto> GetPrimeiro()
        // {
        //     try
        //     {
        //         var produto = _context.Produtos.FirstOrDefault();
        //         if (produto is null)
        //         {
        //             return NotFound("Produtos não encontrados...");
        //         }
        //         return produto;
        //     }
        //     catch (Exception e)
        //     {
        //         return StatusCode(StatusCodes.Status500InternalServerError,
        //             "Ocorreu um erro ao trazer este produto...");
        //     }
        //     
        // }
        
        // [HttpGet("produtoAsync")]
        // public async Task<ActionResult<Produto>> GetPrimeiroAsync()
        // {
        //     try
        //     {
        //         var produto = await _context.Produtos.FirstOrDefaultAsync();
        //         if (produto is null)
        //         {
        //             return NotFound("Produtos não encontrados...");
        //         }
        //         return produto;
        //     }
        //     catch (Exception e)
        //     {
        //         return StatusCode(StatusCodes.Status500InternalServerError,
        //             "Ocorreu um erro ao trazer este produto...");
        //     }
        //     
        // }
        
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
            // try
            // {
            //     var produtos = _context.Produtos.ToList();
            //     if (produtos is null)
            //     {
            //         return NotFound("Produtos não encontrados...");
            //     }
            //     return produtos;
            // }
            // catch (Exception e)
            // {
            //     return StatusCode(StatusCodes.Status500InternalServerError,
            //         "Ocorreu um erro ao trazer este produto...");
            // }

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
            // var produto = _context.Produtos.FirstOrDefault(p => p.ProdutoId == id);
            // if (produto is null)
            // {
            //     return NotFound("Produto não encontrado...");
            // }
            // return produto;
        }
        
        // //Segundo metodo Action GET ID
        // [HttpGet("produtodAsync/{id:int:min(1)}", Name="ObterProdutoAsync")] //Restrição de rotas
        // public async Task<ActionResult<Produto>> GetAsync([FromQuery]int id, [BindRequired] string nome)
        // {
        //     var nomeProduto = nome;
        //     var produto = await _context.Produtos.AsNoTracking().FirstOrDefaultAsync(p => p.ProdutoId == id);
        //     if (produto is null)
        //     {
        //         return NotFound("Produto não encontrado...");
        //     }
        //     return produto;
        // }
        
        
        //Terceiro metodo Action POST
        [HttpPost]
        public ActionResult<Produto> Post(Produto produto)
        {
            if (produto is null)
            {
                return BadRequest();
            }

            //var produto = _mapper.Map<Produto>(produto);
            
            var novoProduto = _unitOfWork.ProdutoRepository.Create(produto);
            _unitOfWork.Commit();
            
            //var novoProdutoDto = _mapper.Map<ProdutoDTO>(novoProduto);
            return new CreatedAtRouteResult("ObterProduto", new { id = novoProduto.ProdutoId }, novoProduto);
            // if (produto is null)
            //     return BadRequest();
            //
            // _context.Produtos.Add(produto);
            // _context.SaveChanges();
            // return new CreatedAtRouteResult("ObterProduto", new { id = produto.ProdutoId }, produto);

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
            // if (id != produto.ProdutoId)
            // {
            //     return BadRequest();
            // }
            // _context.Entry(produto).State = EntityState.Modified;
            // _context.SaveChanges();
            //
            // return Ok(produto);
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

            // var produto = _context.Produtos.FirstOrDefault(p => p.ProdutoId == id);
            // if (produto is null)
            // {
            //     return NotFound("Produto não localizado...");
            // }
            //
            // _context.Produtos.Remove(produto);
            // _context.SaveChanges();
            //
            // return Ok(produto);
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
    }
}
