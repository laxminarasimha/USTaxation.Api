using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using USTaxation.Api.Models;

namespace USTaxation.Api.Data
{
    public class ApplicationDbContext : IdentityDbContext<IdentityUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> Options) : base(Options)
        {

        }
        public DbSet<UserModel> Users { get; set; }

        public DbSet<PayloadPointer> PayloadPointers { get; set; }

        public DbSet<CompanyAggregateDataModel> COMPANY_AGGREGATE_DATA { get; set; }
    }
}
