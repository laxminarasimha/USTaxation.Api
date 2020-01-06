using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Helpers
{
    public enum AggregateFunction
    {
        Default,
        None,
        Sum,
        Min,
        Max,
        Count,
        Avg,
        DistinctCount
    }
}
