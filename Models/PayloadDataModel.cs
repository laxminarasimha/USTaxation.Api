using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Models
{
    public class PayloadDataModel
    {
        public string UserId { get; set; }
        public int Expiry { get; set; }
        public DateTime Created { get; set; }
    }
}
