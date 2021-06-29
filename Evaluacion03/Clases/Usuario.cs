using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Evaluacion03.Clases
{
    public class Usuario
    {
        private string rut;
        private string nombre;
        private string apellido;
        private string correo;
        private string clave;
        private string tipo;

        public string Rut { get => rut; set => rut = value; }
        public string Nombre { get => nombre; set => nombre = value; }
        public string Apellido { get => apellido; set => apellido = value; }
        public string Correo { get => correo; set => correo = value; }
        public string Clave { get => clave; set => clave = value; }
        public string Tipo { get => tipo; set => tipo = value; }
    }
}