using FlyBugClub_WebApp.Models;
using FlyBugClub_WebApp.Repository;
using Humanizer.Localisation;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using System.Data;

namespace FlyBugClub_WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Administrator")]
    public class CategoryController : Controller
    {
        private IGenreRepository _genreRepository;

        public CategoryController(IGenreRepository genreRepository)
        {
            _genreRepository = genreRepository;
        }

        public IActionResult CategoryDevice()
        {
            List<CategoryDevice> lst = _genreRepository.GetAll();

            return View("CategoryDevice", lst);
        }

        public IActionResult CreateCategory()
        {
            return View("CreateCategory", new CategoryDevice());
        }

        [HttpPost]
        public IActionResult UpdateCategory(CategoryDevice category)
        {
            _genreRepository.Update(category);
            return RedirectToAction("CategoryDevice", "Category");
        }

        public IActionResult EditCategory(string Id)
        {
            return View("EditCategory", _genreRepository.FindById(Id));
        }

        public IActionResult DeleteCategory(string id)
        {
            _genreRepository.Delete(id);
            return RedirectToAction("CategoryDevice", "Category");
        }

        [HttpPost]
        public IActionResult SaveCategory(CategoryDevice categoryDevice)
        {
            _genreRepository.Create(categoryDevice);
            return RedirectToAction("CategoryDevice", "Category");
        }
    }
}
