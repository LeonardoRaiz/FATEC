using System.Text;
using System.Text.Json.Serialization;
using ApiCatalogo.Context;
using ApiCatalogo.DTO.Mappings;
using ApiCatalogo.Extensions;
using ApiCatalogo.Filters;
using ApiCatalogo.Log;
using ApiCatalogo.Models;
using ApiCatalogo.Repositories;
using ApiCatalogo.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.IdentityModel.Tokens;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers(options =>
{
    options.Filters.Add(typeof(ApiExceptionFilter));
}).AddJsonOptions(options =>
{
    options.JsonSerializerOptions.ReferenceHandler = ReferenceHandler.IgnoreCycles;
}).AddNewtonsoftJson();

// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddAuthorization();
//builder.Services.AddAuthentication("Bearer").AddJwtBearer();

builder.Services.AddIdentity<ApplicationUser, IdentityRole>().AddEntityFrameworkStores<AppDbContext>().AddDefaultTokenProviders();

string? mySqlConnection = builder.Configuration.GetConnectionString("DefaultConnection");
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseMySql(mySqlConnection, ServerVersion.AutoDetect(mySqlConnection)));


var secretKey = builder.Configuration["Jwt:SecretKey"] ?? throw new ApplicationException("SecretKey is missing");

builder.Services.AddAuthentication(options =>
{
    options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
    options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
}).AddJwtBearer(options =>
{
    options.SaveToken = true;
    options.RequireHttpsMetadata = false;
    options.TokenValidationParameters = new TokenValidationParameters()
    {
        ValidateIssuer = true,
        ValidateAudience = true,
        ValidateIssuerSigningKey = true,
        ValidateLifetime = true,
        ClockSkew = TimeSpan.Zero,
        ValidIssuer = builder.Configuration["Jwt:ValidIssuer"],
        ValidAudience = builder.Configuration["Jwt:ValidAudience"],
        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(secretKey)),
    };
});

builder.Services.AddTransient<IMeuServico, MeuServico>();

builder.Services.Configure<ApiBehaviorOptions>(options =>
{
    options.DisableImplicitFromServicesParameters = true;
});

builder.Services.AddScoped<ApiLoggingFilter>();

builder.Services.AddScoped<ICategoriaRepository, CategoriaRepository>();
builder.Services.AddScoped<IProdutoRepository, ProdutoRepository>();
builder.Services.AddScoped(typeof(IRepository<>), typeof(Repository<>));
builder.Services.AddScoped<IUnitOfWork, UnitOfWork>();


builder.Logging.AddProvider(new CustomLoggerProvider(new CustomLoggerProviderConfiguration()
{
    LogLevel = LogLevel.Information
}));


builder.Services.AddAutoMapper(typeof(ProdutoDtoMappingProfile));


var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
    app.UseDeveloperExceptionPage();
    app.ConfigureExceptionHandler();
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();