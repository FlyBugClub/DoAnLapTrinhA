using FlyBugClub_WebApp.Models;
using Humanizer.Localisation;

namespace FlyBugClub_WebApp.Repository
{
    public interface IGenreRepository
    {
        public bool Create(CategoryDevice category);
        public bool Update(CategoryDevice category);
        public bool Delete(string Id);
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

        public bool Create(CategoryDevice category)
        {
            _ctx.CategoryDevices.Add(category);
            _ctx.SaveChanges();
            return true;
        }

        public bool Delete(string Id)
        {
            CategoryDevice category = _ctx.CategoryDevices.FirstOrDefault(x => x.CategoryId == Id);
            _ctx.CategoryDevices.Remove(category);
            _ctx.SaveChanges();
            return true;
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

        public bool Update(CategoryDevice category)
        {
            CategoryDevice c = _ctx.CategoryDevices.FirstOrDefault(x => x.CategoryId == category.CategoryId);
            if (c != null)
            {
                _ctx.Entry(c).CurrentValues.SetValues(category);
                _ctx.SaveChanges();
            }
            return true;
        }
    }
}
