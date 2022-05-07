using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class Empleado
    {
        public Usuario usuario { get; set; }
        public decimal Sueldo { get; set; }
        public DateTime FechaIngreso { get; set; }
    }
}
