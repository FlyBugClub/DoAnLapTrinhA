using FlyBugClub_WebApp.Models;
using FlyBugClub_WebApp.Repository;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.SqlServer;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();

//Dependency Injection
builder.Services.AddDbContext<FlyBugClubWebApplicationContext>(options =>
{
    options.UseSqlServer(builder.Configuration.GetConnectionString("FlyBugDBContext"));
});
//DI
builder.Services.AddTransient<IProductRepository, ProductRepository>();
builder.Services.AddTransient<IGenreRepository, GenreProductRepository>();
builder.Services.AddSession();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseAuthorization();
app.UseSession();

app.MapAreaControllerRoute(
    name: "MyAreas",
    areaName: "Admin",
    pattern: "Admin/{controller}/{action}/{id?}",
    defaults: new { controller = "Dashboard", action = "Dashboard" }
    );

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Store}/{action=Store}/{id?}");

app.Run();
