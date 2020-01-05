using Microsoft.Extensions.Configuration;
using Newtonsoft.Json;
using System;
using System.Net.Http;
using System.Text;
using USTaxation.Api.Models;

namespace USTaxation.Api.Helpers
{
    public class PayloadHelper : IPayloadHelper
    {
        private readonly IConfiguration _configuration;
        private readonly string _baseEndPoint;
        public PayloadHelper(IConfiguration configuration)
        {
            _configuration = configuration;
            _baseEndPoint = _configuration.GetValue<string>("Api.BaseUrl");
        }
        public string CreatePayload(string userId, string action)
        {
            string apiUrl = string.Format("{0}/{1}", _baseEndPoint, _configuration.GetValue<string>("Api.PayloadPointer.Set.Url"));
            // Get payload expiry from settings
            string payloadExpiry = _configuration.GetValue<string>("PayloadExpiryMinutes");
            int.TryParse(payloadExpiry, out int payloadExpiryMinutes);

            // Generate jwt token
            var jwtRequest = new PayloadDataModel { UserId = userId, Expiry = payloadExpiryMinutes, Created = DateTime.Now };
            var payload = JwtManager.GenerateToken(jwtRequest);

            PayloadPointerRequest setPointerRequest = new PayloadPointerRequest
            {
                Payload = payload,
                UserId = userId,
                Action = action
            };
            var client = new HttpClient();
            var response = client.PostAsync(apiUrl, new StringContent(JsonConvert.SerializeObject(setPointerRequest), Encoding.UTF8, "application/json"));
            if (response != null)
            {
                var result = response.Result;
                if (result.IsSuccessStatusCode)
                {
                    var readContent = result.Content.ReadAsStringAsync();
                    var content = JsonConvert.DeserializeObject<PayloadPointer>(readContent.Result);
                    return content.Pointer;
                }
            }
            return null;
        }
    }
}
