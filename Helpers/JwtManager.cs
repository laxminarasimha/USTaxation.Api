using Microsoft.IdentityModel.Tokens;
using System;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using USTaxation.Api.Models;

namespace USTaxation.Api.Helpers
{
    public class JwtManager
    {
        private const string Secret = "&p@r%m^3(6)0%&p@r%m^3(6)0%&p@r%m^3(6)0%&p@r%m^3(6)0%";
        public static string GenerateToken(PayloadDataModel jwtRequest)
        {
            byte[] symmetricKey = System.Text.Encoding.ASCII.GetBytes(Secret);

            var tokenHandler = new JwtSecurityTokenHandler();

            var now = DateTime.UtcNow;
            var tokenDescriptor = new SecurityTokenDescriptor
            {
                Subject = new ClaimsIdentity(new[]
                {
                    new Claim("UserId", jwtRequest.UserId),
                    new Claim("Created",jwtRequest.Created.ToString())
                }),

                Expires = now.AddMinutes(jwtRequest.Expiry),

                SigningCredentials = new SigningCredentials
                (
                    new SymmetricSecurityKey(symmetricKey),
                    SecurityAlgorithms.HmacSha256Signature
                )
            };

            var stoken = tokenHandler.CreateToken(tokenDescriptor);
            var token = tokenHandler.WriteToken(stoken);

            return token;
        }

        public static ClaimsPrincipal GetPrincipal(string token)
        {
            try
            {
                var tokenHandler = new JwtSecurityTokenHandler();
                var jwtToken = tokenHandler.ReadToken(token) as JwtSecurityToken;

                if (jwtToken == null)
                    return null;

                byte[] symmetricKey = System.Text.Encoding.ASCII.GetBytes(Secret);

                var validationParameters = new TokenValidationParameters()
                {
                    RequireExpirationTime = true,
                    ValidateIssuer = false,
                    ValidateAudience = false,
                    IssuerSigningKey = new SymmetricSecurityKey(symmetricKey)
                };

                SecurityToken securityToken;
                var principal = tokenHandler.ValidateToken(token, validationParameters, out securityToken);

                return principal;
            }
            catch (Exception ex)
            {
                //should write log
                return null;
            }
        }
    }
}
