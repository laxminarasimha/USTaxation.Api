using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Models
{
    public class CompanyAggregateDataModel
    {
        public int ID { get; set; }
        public int CompanyID { get; set; }
        public string Jurisdiction { get; set; }
        public int Year { get; set; }
        public decimal Sales { get; set; }
        public decimal Payroll { get; set; }
        public decimal Property { get; set; }
    }
}
