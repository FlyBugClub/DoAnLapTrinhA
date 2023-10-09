using FlyBugClub_WebApp.Models;
using Microsoft.EntityFrameworkCore;

namespace FlyBugClub_WebApp.Repository
{
    public interface IProductRepository
    {
        public bool Create(Device device);
        public bool Update(Device device);
        public bool Delete(string device);
        public List<Device> GetAllDevices();
        public List<Device> Top10BestSeller();
        public List<Device> FindAllProductByCateId(string Cateid);
        public List<Device> GetSensorProduct(string Cateid);
        public List<Device> GetHardwareProduct(string Cateid);
        public List<Device> GetConnectionProduct(string Cateid);
        public List<Device> SearchByName(string keyword);

        public Device findById(string id);
    }
    public class ProductRepository : IProductRepository
    {
        private FlyBugClubWebApplicationContext _ctx;
        public ProductRepository(FlyBugClubWebApplicationContext ctx)
        {
            _ctx = ctx;
        }

        public bool Create(Device device)
        {
            _ctx.Devices.Add(device);
            _ctx.SaveChanges();
            return true;
        }

        public bool Delete(string device)
        {
            Device d = _ctx.Devices.FirstOrDefault(x=>x.DeviceId == device);
            _ctx.Devices.Remove(d);
            _ctx.SaveChanges();
            return true;
        }

        public List<Device> FindAllProductByCateId(string Cateid)
        {
            return _ctx.Devices.Where(x => x.CategoryId == Cateid).ToList();
        }

        public Device findById(string id)
        {
            return _ctx.Devices.Where(x => x.DeviceId == id).FirstOrDefault();
        }

        public List<Device> GetAllDevices()
        {
            return _ctx.Devices.ToList();
        }

        public List<Device> GetConnectionProduct(string Cateid)
        {
            return _ctx.Devices.Where(x=>x.CategoryId == "3").ToList();
        }

        public List<Device> GetHardwareProduct(string Cateid)
        {
            return _ctx.Devices.Where(x => x.CategoryId == "2").ToList();
        }

        public List<Device> GetSensorProduct(string Cateid)
        {
            return _ctx.Devices.Where(x => x.CategoryId == "1").ToList();
        }

        public List<Device> SearchByName(string keyword)
        {
            return _ctx.Devices.Where(x=>x.Name.Contains(keyword)).ToList();
        }

        public List<Device> Top10BestSeller()
        {
            return _ctx.Devices.OrderByDescending(x=>x.BorrowRate).Take(10).ToList();
        }

        public bool Update(Device device)
        {
            Device d = _ctx.Devices.FirstOrDefault(x=>x.DeviceId== device.DeviceId);
            if (d!=null)
            {
                _ctx.Entry(d).CurrentValues.SetValues(device);
                _ctx.SaveChanges();
            }
            return true;
        }
    }
}
