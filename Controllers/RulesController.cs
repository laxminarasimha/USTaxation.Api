﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using USTaxation.Api.Attributes;
using USTaxation.Api.Data;
using USTaxation.Api.Helpers;
using USTaxation.Api.Models;

namespace USTaxation.Api.Controllers
{
    [Route("api/[controller]")]
    public class RulesController : Controller
    {
        private readonly ApplicationDbContext _db;
        private readonly IConfiguration _configuration;
        public RulesController(ApplicationDbContext db, IConfiguration configuration)
        {
            _db = db;
            _configuration = configuration;
        }


        // GET: api/values


        [HttpGet("[action]")]
        public IActionResult ExecuteRule(Rule rule)
        {
            try
            {
                using (var command = _db.Database.GetDbConnection().CreateCommand())
                {
                    if (string.IsNullOrEmpty(rule.ComparisonPredicate))
                    {
                        return BadRequest();
                    }
                    else if (string.IsNullOrEmpty(rule.ComparisonValue))
                    {
                        command.CommandText = string.Format("Select * from {0}", rule.ComparisonPredicate);
                    }
                    else if (string.IsNullOrEmpty(rule.AggregateOperator))
                    {
                        command.CommandText = string.Format("Select {0} from {1}", rule.ComparisonValue, rule.ComparisonPredicate);
                    }
                    else
                    {
                        command.CommandText = string.Format("Select {0}({1}) AS 'Aggregate{1}' from {2}", rule.AggregateOperator, rule.ComparisonValue, rule.ComparisonPredicate);
                    }
                    _db.Database.OpenConnection();
                    var reader = command.ExecuteReader();
                                       
                    return Ok(reader.ToReaderList());
                }
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }            
        }        
    }
}