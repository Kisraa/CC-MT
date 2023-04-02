using QuanLyKho.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLyKho.Controllers
{
    public class HomeController : Controller
    {

        DataClasses1DataContext data = new DataClasses1DataContext("KISURAAAA\\KIRAAAA");
        public ActionResult Index()
        {
            var all_sanpham = from s in data.SanPhams select s;
            return View(all_sanpham);
        }

        public ActionResult TheLoaiSP()
        {
            return View();
        }

    }
}