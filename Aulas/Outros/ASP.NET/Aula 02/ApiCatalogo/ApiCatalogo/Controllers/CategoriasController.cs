using ApiCatalogo.Context;
using ApiCatalogo.Filters;
using ApiCatalogo.Models;
using ApiCatalogo.Repositories;
using ApiCatalogo.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace ApiCatalogo.Controllers
{
    [Route("[controller]")]
    [ApiController]
    public class CategoriasController : ControllerBase
    {
        //private readonly AppDbContext _context;
        private readonly IUnitOfWork _unitOfWork;
        //private readonly ICategoriaRepository _repository;
        private readonly IConfiguration _configuration;
        private readonly ILogger _logger;

        public CategoriasController(IUnitOfWork unitOfWork, IConfiguration configuration, ILogger<CategoriasController> logger)
        {
            _logger = logger;
            _unitOfWork = unitOfWork;
            _configuration = configuration;
        }

        [HttpGet("LerArquivoConfiguracao")]
        public string GetValores()
        {
            var valor1 = _configuration["chave1"];
            var valor2 = _configuration["chave2"];
            
            var secao1 = _configuration["secao1:chave2"];

            return $"Chave1 = {valor1} \nChave2 = {valor2} \nSeção 1 => Chave2 = {secao1}";
        }

        [HttpGet("UsandoFromServices/{nome}")]
        public ActionResult<string> GetSaudacaoFromServices([FromServices] IMeuServico meuServico, string nome)
        {
            return meuServico.Saudacao(nome);
        }
        
        [HttpGet("SemUsarFromServices/{nome}")]
        public ActionResult<string> GetSaudacaoSemFromServices(IMeuServico meuServico, string nome)
        {
            return meuServico.Saudacao(nome);
        }
        
        // [HttpGet("produtos")]
        // public ActionResult<IEnumerable<Categoria>> GetCategoriasProdutos()
        // {
        //     try
        //     {
        //         _logger.LogInformation("============== GET api/categoprias/produtos ===============");
        //         return _context.Categorias.Take(1).Include(p => p.Produtos).ToList();
        //     }
        //     catch (Exception e)
        //     {
        //         Console.WriteLine(e);
        //         throw;
        //     }
        //     
        //     
        // }
        
        [HttpGet]
        public ActionResult<IEnumerable<Categoria>> Get()
        {
            var categorias = _unitOfWork.CategoriaRepository.GetAll();
            if (categorias is null)
            {
                return NotFound("Não existem categorias... ");
            }
            return Ok(categorias);
            // try
            // {
            //     return _context.Categorias.AsNoTracking().ToList(); //Otimizar a consulta sem rastreamento 
            // }
            // catch (Exception e)
            // {
            //     return StatusCode(StatusCodes.Status500InternalServerError,
            //         "Ocorreu um problema ao tratar a sua solicitação");
            // }
        }
        
        // [HttpGet("AsyncCategorias")]
        // [ServiceFilter(typeof(ApiLoggingFilter))]
        // public async Task<ActionResult<IEnumerable<Categoria>>> GetAsync()
        // {
        //     try
        //     {
        //         return await _context.Categorias.AsNoTracking().ToListAsync();
        //     }
        //     catch (Exception e)
        //     {
        //         return StatusCode(StatusCodes.Status500InternalServerError,
        //             "Ocorreu um problema ao tratar a sua solicitação");
        //     }
        // }

        [HttpGet("{id:int}", Name = "ObterCategoria")]
        public ActionResult<Categoria> Get(int id)
        {
            var categoria = _unitOfWork.CategoriaRepository.Get(c => c.CategoriaId == id);

            if (categoria == null)
            {
                _logger.LogWarning($"Categotia com id = {id} não encontrada...");
                return NotFound($"Categoria com id = {id} não encontrada..."); 
            }

            return Ok(categoria);
            // try
            // {
            //     var categoria = _context.Categorias.FirstOrDefault(p => p.CategoriaId == id);
            //
            //     if (categoria is null)
            //     {
            //         return NotFound($"Categoria com o id = {id} não encontrada...");
            //     }
            //
            //     return Ok(categoria);
            // }
            // catch (Exception e)
            // {
            //     return StatusCode(StatusCodes.Status500InternalServerError,
            //         "Ocorreu um problema ao tratar a sua solicitação");
            // }

        }

        [HttpPost]
        public ActionResult Post(Categoria categoria)
        {
            if (categoria is null)
            {
                _logger.LogWarning($"Dados inválidos...");
                return BadRequest("Dados invalidos");
            }

            var categoriaCriada = _unitOfWork.CategoriaRepository.Create(categoria);
            _unitOfWork.Commit();
            return new CreatedAtRouteResult("ObterCategoria", new { id = categoriaCriada.CategoriaId },
                categoriaCriada);
            // if (categoria is null)
            // {
            //     return BadRequest();
            // }
            //
            // _context.Categorias.Add(categoria);
            // _context.SaveChanges();
            // return new CreatedAtRouteResult("ObterCategoria", new { id = categoria.CategoriaId }, categoria);
        }

        [HttpPut("{id:int}")]
        public ActionResult Put(int id, Categoria categoria)
        {
            if (id != categoria.CategoriaId)
            {
                _logger.LogWarning($"Dados inválidos...");
                return BadRequest("Dados inválidos");
            }

            _unitOfWork.CategoriaRepository.Update(categoria);
            _unitOfWork.Commit();
            return Ok(categoria);
            // _context.Entry(categoria).State = EntityState.Modified;
            // _context.SaveChanges();
            // return Ok(categoria);
        }

        [HttpDelete("{id:int}")]
        public ActionResult Delete(int id)
        {
            // var categoria = _context.Categorias.FirstOrDefault(p => p.CategoriaId == id);
            var categoria = _unitOfWork.CategoriaRepository.Get(c => c.CategoriaId == id);
            
            if (categoria == null)
            {
                _logger.LogWarning($"Categoria com id = {id} não encontrada...");
                return NotFound($"Categoria com id = {id} não encontrada...");
            }

            var categoriaExcluida = _unitOfWork.CategoriaRepository.Delete(categoria);
            _unitOfWork.Commit();
            return Ok(categoriaExcluida);
            // _context.Categorias.Remove(categoria);
            // _context.SaveChanges();
            // return Ok(categoria);

        }
    }
}
