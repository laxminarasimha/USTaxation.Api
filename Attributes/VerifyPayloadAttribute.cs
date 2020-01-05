using Microsoft.AspNetCore.Mvc.Filters;
using System;
using System.Collections.Generic;
using System.Security.Claims;
using USTaxation.Api.Helpers;

namespace USTaxation.Api.Attributes
{
    internal class VerifyPayloadAttribute : Attribute, IActionFilter
    {
        public void OnActionExecuting(ActionExecutingContext context)
        {
            string userId;

            var payload = context.HttpContext.Request.Query["payload"].ToString();
            if (ValidateToken(payload, out userId))
            {
                var claims = new List<Claim>
                {
                    new Claim("UserId", userId)
                };

                var identity = new ClaimsIdentity(claims, "Jwt");
                ClaimsPrincipal principal = new ClaimsPrincipal(identity);

                context.HttpContext.User = principal;
            }
        }

        public void OnActionExecuted(ActionExecutedContext context)
        {
        }

        private static bool ValidateToken(string token, out string userId)
        {
            userId = null;

            var simplePrinciple = JwtManager.GetPrincipal(token);
            if (simplePrinciple == null)
            {
                return false;
            }
            var identity = simplePrinciple.Identity as ClaimsIdentity;

            if (identity == null)
                return false;

            if (!identity.IsAuthenticated)
                return false;

            var userIdClaim = identity.FindFirst("UserId");
            userId = userIdClaim?.Value;

            var createdClaim = identity.FindFirst("Created");
            var created = createdClaim?.Value;

            if (string.IsNullOrEmpty(userId))
                return false;

            if (string.IsNullOrEmpty(created) || DateTime.Parse(created).AddMinutes(10) < DateTime.Now)
                return false;

            return true;
        }
    }
}