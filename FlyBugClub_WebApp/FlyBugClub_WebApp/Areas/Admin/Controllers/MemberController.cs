using Microsoft.AspNetCore.Mvc;

namespace FlyBugClub_WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class MemberController : Controller
    {
        public IActionResult Member()
        {
            return View();
        }
    }
}
