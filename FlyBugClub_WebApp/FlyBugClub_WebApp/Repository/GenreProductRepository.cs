using FlyBugClub_WebApp.Models;

namespace FlyBugClub_WebApp.Repository
{
    public interface IGenreRepository
    {
        public List<CategoryDevice> GetAll();
        public CategoryDevice FindById(string id);
    }
    public class GenreProductRepository : IGenreRepository
    {
        private FlyBugClubWebApplicationContext _ctx;
        public GenreProductRepository(FlyBugClubWebApplicationContext ctx)
        {
            _ctx = ctx;
        }
        public CategoryDevice FindById(string id)
        {
            CategoryDevice cd = _ctx.CategoryDevices.FirstOrDefault(x => x.CategoryId == id);
            return cd;
        }

        public List<CategoryDevice> GetAll()
        {
            return _ctx.CategoryDevices.ToList();
        }
    }
}
