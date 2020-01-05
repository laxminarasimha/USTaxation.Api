using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Helpers
{
    public interface IPayloadHelper
    {
        string CreatePayload(string userId, string action);
    }
}
