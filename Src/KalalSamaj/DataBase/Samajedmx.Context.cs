﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace KalalSamaj.DataBase
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class SamajEntities : DbContext
    {
        public SamajEntities()
            : base("name=SamajEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Committee> Committees { get; set; }
        public DbSet<CommitteeSession> CommitteeSessions { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Person> People { get; set; }
        public DbSet<RefType> RefTypes { get; set; }
        public DbSet<UserAccount> UserAccounts { get; set; }
        public DbSet<Designation> Designations { get; set; }
    }
}
