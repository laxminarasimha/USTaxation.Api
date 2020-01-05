using System;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using USTaxation.Api.Attributes;
using USTaxation.Api.Data;
using USTaxation.Api.Helpers;
using USTaxation.Api.Models;

namespace USTaxation.Api.Controllers
{
    [Route("api/[controller]")]
    public class UsersController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly IConfiguration _configuration;
        private readonly IPayloadHelper _payloadHelper;
        private readonly IHashingService _hashingService;
        public UsersController(ApplicationDbContext db, IConfiguration configuration, IPayloadHelper payloadHelper, IHashingService hashingService)
        {
            _db = db;
            _configuration = configuration;
            _payloadHelper = payloadHelper;
            _hashingService = hashingService;
        }


        // GET: api/values


        [HttpGet("[action]")]
        public IActionResult GetUsers()
        {
            return Ok(_db.Users.ToList());
        }

        [HttpGet("[action]")]
        [VerifyPayload]
        public IActionResult GetUser()
        {
            var payloadDataModel = ProcessIdentity();
            if (payloadDataModel == null)
            {
                return BadRequest(new JsonResult("Request is null"));
            }

            return Ok(_db.Users.FirstOrDefault(o => o.UserId == payloadDataModel.UserId));
        }

        [HttpPost("[action]")]
        public IActionResult Login([FromBody] LoginModel formdata)
        {
            if (_db.Users == null)
            {
                return BadRequest(new JsonResult("Request is null"));
            }
            try
            {
                var secret = _configuration.GetValue<string>("HashSecret");
                var hashPassword = _hashingService.GenerateHash(formdata.Password, secret);
                var user = _db.Users.FirstOrDefault(o => o.Email == formdata.UserName && o.Password == hashPassword);
                if (user == null)
                {
                    return NotFound(new JsonResult("Invalid user credentials"));
                }

                return Ok(new JsonResult(user.UserId));
            }
            catch (Exception ex)
            {
                return BadRequest(new JsonResult(ex.Message));
            }
        }

        [HttpPost("[action]")]
        public async Task<IActionResult> AddUser([FromBody] UserModel user)
        {
            try
            {
                var secret = _configuration.GetValue<string>("HashSecret");
                user.UserId = Guid.NewGuid().ToString();
                user.Password = _hashingService.GenerateHash(user.Password, secret);
                await _db.Users.AddAsync(user);

                await _db.SaveChangesAsync();

                return Ok(new JsonResult(user.UserId));
            }
            catch(Exception ex)
            {
                return BadRequest(new JsonResult(ex.Message));
            }
        }

        [HttpPut("[action]/{id}")]

        public async Task<IActionResult> UpdateUser([FromRoute] int id, [FromBody] UserModel formdata)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            var findUser = _db.Users.FirstOrDefault(p => p.Id == id);

            if (findUser == null)
            {
                return NotFound();
            }

            // If the User was found
            findUser.FirstName = formdata.FirstName;
            findUser.LastName = formdata.LastName;
            findUser.CompanyName = formdata.CompanyName;
            findUser.Email = formdata.Email;
            findUser.Password = formdata.Password;
            findUser.Phone = formdata.Phone;
            findUser.Role = formdata.Role;


            _db.Entry(findUser).State = EntityState.Modified;

            await _db.SaveChangesAsync();

            return Ok(new JsonResult("The User with id " + id + " is updated"));

        }


        [HttpDelete("[action]/{id}")]
        public async Task<IActionResult> DeleteUser([FromRoute] int id)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            // find the User

            var findUser = await _db.Users.FindAsync(id);

            if (findUser == null)
            {
                return NotFound();
            }

            _db.Users.Remove(findUser);

            await _db.SaveChangesAsync();

            // Finally return the result to client
            return Ok(new JsonResult("The User with id " + id + " is Deleted."));
        }

        private PayloadDataModel ProcessIdentity()
        {
            var identity = HttpContext.User.Identity.GetType() == typeof(ClaimsIdentity) ? (ClaimsIdentity)HttpContext.User.Identity : null;
            if (identity == null || identity.Claims == null)
            {
                return null;
            }
            var userId = identity.Claims.FirstOrDefault(x => x.Type.Equals("UserId"));
            var payloadDataModel = new PayloadDataModel
            {
                UserId = userId != null ? userId.Value : string.Empty
            };

            return payloadDataModel;
        }

    }
}