using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using USTaxation.Api.Data;
using USTaxation.Api.Models;

namespace USTaxation.Api.Controllers
{
    [Route("api/[controller]")]
    public class PayloadPointerController : Controller
    {
        private readonly ApplicationDbContext _db;

        public PayloadPointerController(ApplicationDbContext db)
        {
            _db = db;
        }

        [HttpGet("[action]")]
        public IActionResult GetPayloadPointer(string userId)
        {
            return Ok(_db.PayloadPointers.FirstOrDefault(o => o.UserId == userId));
        }

        [HttpPost("[action]")]
        public IActionResult SetPayloadPointer([FromBody]PayloadPointerRequest request)
        {
            var payloadPointer = new PayloadPointer
            {
                Pointer = Guid.NewGuid().ToString(),
                Payload = request.Payload,
                UserId = request.UserId,
                Created = DateTime.Now,
                Action = request.Action
            };
            _db.PayloadPointers.Add(payloadPointer);
            _db.SaveChanges();
            return Ok(new JsonResult(payloadPointer));
        }
    }
}