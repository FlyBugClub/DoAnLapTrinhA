using FlyBugClub_WebApp.Models;
using FlyBugClub_WebApp.Repository;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Data;
using System.Security.Claims;
using Microsoft.AspNetCore.Mvc.Rendering;

namespace FlyBugClub_WebApp.Controllers
{
    public class StoreController : Controller
    {
        private FlyBugClubWebApplicationContext _ctx;

        private readonly ILogger<StoreController> _logger;
        private IProductRepository _productRepository;
        private IGenreRepository _genreRepository;

        public StoreController(FlyBugClubWebApplicationContext ctx, 
                                ILogger<StoreController> logger, 
                                IProductRepository productRepository,
                                IGenreRepository genreRepository
            )
        {
            _ctx = ctx;
            _logger = logger;
            _productRepository = productRepository;
            _genreRepository = genreRepository;
        }

        public IActionResult Store(int page = 1)
        {
            /*==================== Pagination ====================*/

            var allData = _ctx.Devices;
            int itemsPerPage = 9; // Số mục muốn hiển thị cho mỗi trang

            // Lấy tổng số mục từ nguồn dữ liệu của bạn (ví dụ: cơ sở dữ liệu)
            int totalItems = _ctx.Devices.Count();
            int totalPages = (int)Math.Ceiling((double)totalItems / itemsPerPage);

            // Tính toán vị trí bắt đầu và kết thúc của mục cho trang hiện tại
            int startIndex = (page - 1) * itemsPerPage;
            int endIndex = startIndex + itemsPerPage;

            int currentPage = page;
            int nextPage = currentPage + 1;
            int prevPage = currentPage - 1;

            ViewBag.CurrentPage = currentPage;
            ViewBag.NextPage = nextPage;
            ViewBag.PrevPage = prevPage;
            ViewBag.TotalDevices = totalItems;
            ViewBag.TotalPages = totalPages;

            /*================== Get All Data Devices ==================*/

            //1. lay du lieu
            List<Device> listdevice = _productRepository.GetAllDevices().OrderBy(x => x.DeviceId).Skip(startIndex).Take(itemsPerPage).ToList();
            //2. gui du lieu cho view

            return View("Store", listdevice);
        }

        public IActionResult Payment()
        {
            List<Device> top10BestSeller = _productRepository.Top10BestSeller();

            MenuCard m = new MenuCard();
            m.Top10Bestdevicces = top10BestSeller;

            ViewBag.sessionId = HttpContext.Session.Id;
            CardModel cartModel = new CardModel();
            cartModel.CardId = HttpContext.Session.Id;
            if(HttpContext.Session.Get<List<Item>>("store") != null)
            {
                List<Item>? items = HttpContext.Session.Get<List<Item>>("store");
                cartModel.setAllItem(items);
            }

            m.Card = cartModel;

            return View(m);
        }

        [HttpPost]
        public IActionResult SortProduct(string sortOption, int page = 1, int pageSize = 5)
        {
            /*==================== Pagination ====================*/

            var allData = _ctx.Devices;
            int itemsPerPage = 9; // Số mục muốn hiển thị cho mỗi trang

            // Lấy tổng số mục từ nguồn dữ liệu của bạn (ví dụ: cơ sở dữ liệu)
            int totalItems = _ctx.Devices.Count();
            int totalPages = (int)Math.Ceiling((double)totalItems / itemsPerPage);
            var pagedData = allData.Skip((page - 1) * pageSize).Take(pageSize);

            ViewBag.TotalPages = totalPages;

            // Tính toán vị trí bắt đầu và kết thúc của mục cho trang hiện tại
            int startIndex = (page - 1) * itemsPerPage;
            int endIndex = startIndex + itemsPerPage;

            ViewBag.CurrentPage = page;

            var products = _productRepository.GetAllDevices();

            switch (sortOption)
            {
                case "PriceAscending":
                    products = products.OrderBy(x=>x.Price).ToList(); 
                    break;
                case "PriceDescending":
                    products = products.OrderByDescending(x=>x.Price).ToList();
                    break;
                case "BestSelling":
                    products = products.OrderByDescending(x=>x.BorrowRate).ToList();
                    break;
            }
            return View("Store", products);
        }

        [HttpPost]
        public IActionResult FillProduct(string fillOption, int page = 1, int pageSize = 5)
        {
            var filteredProducts = new List<Device>();

            // Lấy dữ liệu dựa trên fillOption
            var dataToPage = new List<Device>();


            if (fillOption == "all")
            {
                dataToPage = _productRepository.GetAllDevices();
            }
            else if(fillOption == "1")
            {
                dataToPage = _productRepository.GetSensorProduct(fillOption);
            }
            else if (fillOption == "2")
            {
                dataToPage = _productRepository.GetHardwareProduct(fillOption);
            }
            else if (fillOption == "3")
            {
                dataToPage = _productRepository.GetConnectionProduct(fillOption);
            }

            /*==================== Pagination ====================*/

            /*int itemsPerPage = 9; // Số mục muốn hiển thị cho mỗi trang

            *//*Lấy tổng số mục từ nguồn dữ liệu của bạn(ví dụ: cơ sở dữ liệu)*//*
            int totalItems = dataToPage.Count();
            int totalPages = (int)Math.Ceiling((double)totalItems / itemsPerPage);
            var pagedData = dataToPage.Skip((page - 1) * pageSize).Take(pageSize);

            ViewBag.TotalDevices = totalItems;
            ViewBag.TotalPages = totalPages;

            *//*Tính toán vị trí bắt đầu và kết thúc của mục cho trang hiện tại*//*
            int startIndex = (page - 1) * itemsPerPage;
            int endIndex = startIndex + itemsPerPage;

            ViewBag.CurrentPage = page;

            filteredProducts = dataToPage.OrderBy(x => x.DeviceId).Skip(startIndex).Take(itemsPerPage).ToList();*/
            filteredProducts = dataToPage;
            return View("FillProduct", filteredProducts);
        }
    
        public IActionResult AddToCard(string id)
        {
            //1. Find product by id
            Device device = _productRepository.findById(id);
            CardModel cardModel = null;
            int Quantity = 1;

            if (HttpContext.Session.Get<List<Item>>("store") != null)
            {
                //1
                cardModel = new CardModel();
                cardModel.CardId = HttpContext.Session.Id;
                cardModel.setAllItem(HttpContext.Session.Get<List<Item>>("store"));

                //2
                Item item = new Item()
                {
                    Id = device.DeviceId,
                    ImagePath = device.ImagePath,
                    Name = device.Name,
                    Price = device.Price,
                    Quantity = Quantity,
                    lineTotla = device.Price * Quantity
                };

                //3
                cardModel.addItem(item);

                //4
                HttpContext.Session.Set<List<Item>>("store", cardModel.getAllItem());
            }
            else
            {
                //1
                cardModel = new CardModel();
                cardModel.CardId = HttpContext.Session.Id;

                //2
                Item item = new Item()
                {
                    Id = device.DeviceId,
                    ImagePath = device.ImagePath,
                    Name = device.Name,
                    Price = device.Price,
                    Quantity = Quantity,
                    lineTotla = device.Price * Quantity,
                };
                //3
                cardModel.addItem(item);

                //4
                HttpContext.Session.Set<List<Item>>("store", cardModel.getAllItem());
                /*HttpContext.Session.SetInt32()*/
            }

            return RedirectToAction("Payment");
        }

        public IActionResult RemoveItem(string id)
        {
            //1
            List<Item> cartItems = HttpContext.Session.Get<List<Item>>("store");

            if (cartItems != null)
            {
                Item RemoveToProduct = cartItems.FirstOrDefault(x => x.Id == id);

                cartItems.Remove(RemoveToProduct);
            }
            HttpContext.Session.Set("store", cartItems);

            return RedirectToAction("Payment");
        }
    }
}
