﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace PilMoney.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class PilMoneyEntities : DbContext
    {
        public PilMoneyEntities()
            : base("name=PilMoneyEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Compras> Compras { get; set; }
        public virtual DbSet<Contactos> Contactos { get; set; }
        public virtual DbSet<Cuentas> Cuentas { get; set; }
        public virtual DbSet<Depositos> Depositos { get; set; }
        public virtual DbSet<Inversiones> Inversiones { get; set; }
        public virtual DbSet<Servicios> Servicios { get; set; }
        public virtual DbSet<TipoMonedas> TipoMonedas { get; set; }
        public virtual DbSet<Transferencias> Transferencias { get; set; }
        public virtual DbSet<Usuarios> Usuarios { get; set; }
        public virtual DbSet<Venta> Venta { get; set; }
       
    }
}
