//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Collections.Generic;

namespace PilMoney.Models
{
    
    public class Servicios
    {
       private int idServicio;
       private string descripcion;
       private System.DateTime fechaVencimiento;
       private System.DateTime fechaPago;
       private double importe;
       private string entidad;
       private byte estado;
       private string cvu;
    

       public Servicios(int idServicio, string descripcion, System.DateTime fechaVencimiento, System.DateTime fechaPago, double importe, string entidad, byte estado, string cvu){
           this.idServicio = idServicio;
           this.descripcion = descripcion;
           this.fechaVencimiento = fechaVencimiento;
           this.fechaPago = fechaPago;
           this.importe = importe;
           this.entidad = entidad;
           this.estado = estado;
           this.cvu = cvu;
          
       }

       public int IdServicio {get => idServicio; set => idServicio = value;}
       public string Descripcion {get => descripcion; set => descripcion = value;}
       public System.DateTime FechaVencimiento {get => fechaVencimiento; set => fechaVencimiento = value;}
       public System.DateTime FechaPago {get => fechaPago; set => fechaPago = value;}
       public double Importe {get => importe; set => importe = value;}
       public string Entidad {get => entidad; set => entidad = value;}
       public byte Estado {get => estado; set => estado = value;}
       public string CVU {get => cvu; set => cvu = value;}
    
    }
}
