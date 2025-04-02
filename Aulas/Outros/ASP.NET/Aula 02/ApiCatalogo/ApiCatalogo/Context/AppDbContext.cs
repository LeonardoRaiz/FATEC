using ApiCatalogo.Models;
using Microsoft.EntityFrameworkCore;
using IdentityDbContext = Microsoft.AspNetCore.Identity.EntityFrameworkCore.IdentityDbContext;

namespace ApiCatalogo.Context;

public class AppDbContext : IdentityDbContext
{
    public AppDbContext(DbContextOptions<AppDbContext> options) : base(options)
    { }
    
    public DbSet<Categoria>? Categorias { get; set; }
    public DbSet<Produto>? Produtos { get; set; }
}