using FlyBugClub_WebApp.Models;
using FlyBugClub_WebApp.Repository;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace FlyBugClub_WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class ShopController : Controller
    {
        private IProductRepository _productRepository;
        private IGenreRepository _genreRepository;
        public ShopController(IProductRepository productRepository, IGenreRepository genreRepository)
        {
            _productRepository = productRepository;
            _genreRepository = genreRepository;
        }
        public IActionResult Devices()
        {
            List<Device> lst = _productRepository.GetAllDevices();

            return View("Devices", lst);
        }

        [HttpPost]
        public IActionResult saveDevice(Device device)
        {
            /*================== Get All Data Genre ==================*/

            var genreList = _genreRepository.GetAll();
            ViewBag.GenreId = new SelectList(genreList, "CategoryId", "CategoryName");

            _productRepository.Create(device);
            return RedirectToAction("Devices");
        }

        public IActionResult CreateDevice()
        {
            /*================== Get All Data Genre ==================*/

            var genreList = _genreRepository.GetAll();
            ViewBag.GenreId = new SelectList(genreList, "CategoryId", "CategoryName");

            return View("createDevice", new Device());
        }

        [HttpPost]
        public IActionResult UpdateDevice(Device device)
        {
            _productRepository.Update(device);
            return RedirectToAction("Devices", "Shop");
        }

        public IActionResult EditDevice(string Id)
        {
            /*================== Get All Data Genre ==================*/

            var genreList = _genreRepository.GetAll();
            ViewBag.GenreId = new SelectList(genreList, "CategoryId", "CategoryName");

            return View("EditDevice", _productRepository.findById(Id));
        }

        public IActionResult DeleteDevice(string id)
        {
            _productRepository.Delete(id);
            return RedirectToAction("Devices", "Shop");
        }
    }
}
