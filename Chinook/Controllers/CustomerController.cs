using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Chinook.Data;
using Chinook.Model;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace Chinook.Controllers
{
    [Route("api/customer")]
    [ApiController]
    public class CustomerController : ControllerBase
    {

        // GET: api/Customer/5
        [HttpGet("{country}")]
        public IActionResult GetByCountry(string country)
        {
            var repo = new CustomerRepository();
            var customers = repo.GetByCountry(country);

            if (!customers.Any())
                return NotFound();

            return Ok(customers);
        }
    }
}
