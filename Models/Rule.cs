using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Threading.Tasks;
using USTaxation.Api.Helpers;

namespace USTaxation.Api.Models
{
    public class Rule
    {       
        public string ComparisonPredicate { get; set; }
        public ExpressionType ComparisonOperator { get; set; }
        public AggregateFunction AggregateFunction { get; set; }
        public string ComparisonValue { get; set; }
    }
}
