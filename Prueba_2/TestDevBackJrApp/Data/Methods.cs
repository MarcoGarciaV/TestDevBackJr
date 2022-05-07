using Core;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public class Methods
    {
        public List<Empleado> ObtenerUsuarios()
        {
            DataDb db = new DataDb();

            return db.ObtenerUsuario();
        }

        public Empleado ObtenerUsuarioPorId(int Usuario_ID)
        {
            DataDb db = new DataDb();

            return db.ObtenerUsuarioPorId(Usuario_ID);
        }

        public List<Empleado> ObtenerUsuarioEmpleado()
        {
            DataDb db = new DataDb();
            return db.ObtenerUsuarioEmpleado();
        }

        public bool ActualizarSalarioEmpleado(Empleado empleado)
        {
            DataDb db = new DataDb();
            return db.ActualizarSalarioUsuario(empleado);
        }

        public int InsertarUsuario(Usuario usuario)
        {
            DataDb db = new DataDb();
            return db.InsertarUsuario(usuario);
        }

        public bool InsertarEmpleado(Empleado empleado)
        {
            DataDb db = new DataDb();
            return db.InsertarEmpleado(empleado);
        }

        public bool VerificarUsuarioExiste(Usuario usuario)
        {
            DataDb db = new DataDb();
            return db.VerificarUsuarioExiste(usuario);
        }
    }
}
