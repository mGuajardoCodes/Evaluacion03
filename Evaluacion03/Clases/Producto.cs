using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Evaluacion03.Clases
{
    public class Producto
    {
        private string codigo;
        private string nombre;
        private string descripcion;
        private int precio;
        private int calificacion;
        private string userEmail;
        

        public Producto()
        {
        }

        public string Codigo { get => codigo; set => codigo = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Descripcion { get => descripcion; set => descripcion = value; }
        public int Precio { get => precio; set => precio = value; }
        public int Calificacion { get => calificacion; set => calificacion = value; }
        public string UserEmail { get => userEmail; set => userEmail = value; }
    }


}