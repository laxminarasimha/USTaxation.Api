using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;

namespace USTaxation.Api.Models
{
    public class Rule
    {       
        public string ComparisonPredicate { get; set; }
        public ExpressionType ComparisonOperator { get; set; }
        public string AggregateOperator { get; set; }
        public string ComparisonValue { get; set; }
    }
}
