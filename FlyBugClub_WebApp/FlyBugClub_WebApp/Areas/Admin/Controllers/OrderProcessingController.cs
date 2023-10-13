using FlyBugClub_WebApp.Models;
using FlyBugClub_WebApp.Repository;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using System.Data;

namespace FlyBugClub_WebApp.Areas.Admin.Controllers
{
    [Area("Admin")]
    [Authorize(Roles = "Administrator")]
    public class OrderProcessingController : Controller
    {
        private FlyBugClubWebApplicationContext _ctx;
        private IOrderProcessingRepository _orderProcessingRepository;
        public OrderProcessingController(FlyBugClubWebApplicationContext ctx, 
                                        IOrderProcessingRepository orderProcessingRepository)
        {
            _ctx = ctx;
            _orderProcessingRepository = orderProcessingRepository;
        }
        public IActionResult Bill()
        {
            List<BillBorrow> getAllBillWDetail = _orderProcessingRepository.GetAllBillsWithDetails();

            foreach (var bill in getAllBillWDetail)
            {
                /*bill.Sid = _orderProcessingRepository.GetUserName(bill.Sid);*/
                var userName = bill.SidNavigation.Name;

                foreach(var detail in bill.BorrowDetails)
                {
                    detail.DeviceId = _orderProcessingRepository.GetDeviceName(detail.DeviceId);
                }
            }

            int countWaiting = _ctx.BillBorrows.Count(x => x.Status == 0);
            int countBorrowing = _ctx.BillBorrows.Count(x => x.Status == 1);
            int countDone = _ctx.BillBorrows.Count(x => x.Status == 2);
            ViewBag.countWaiting = countWaiting;
            ViewBag.countBorrowing = countBorrowing;
            ViewBag.countDone = countDone;

            return View("Bill", getAllBillWDetail);
        }

        public IActionResult DeleteBill(int id)
        {
            _orderProcessingRepository.Delete(id);
            return RedirectToAction("Bill", "OrderProcessing");
        }
    }
}
