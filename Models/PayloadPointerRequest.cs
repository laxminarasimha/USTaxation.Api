using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Models
{
    public class PayloadPointerRequest
    {
        public string Payload { get; set; }

        public string UserId { get; set; }

        public string Action { get; set; }
    }
}
