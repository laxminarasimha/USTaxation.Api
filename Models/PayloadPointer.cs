using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Models
{
    public class PayloadPointer
    {
        public int Id { get; set; }

        public string Pointer { get; set; }

        public string Payload { get; set; }

        public string UserId { get; set; }

        public DateTime Created { get; set; }

        public string Action { get; set; }
    }
}
