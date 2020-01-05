using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace USTaxation.Api.Helpers
{
    public interface IHashingService
    {
        string GenerateHash(string message, string secret);
    }
}
