using Microsoft.AspNetCore.Mvc;

namespace FlyBugClub_WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class DashboardController : Controller
    {
        public IActionResult Dashboard()
        {
            return View();
        }
    }
}
