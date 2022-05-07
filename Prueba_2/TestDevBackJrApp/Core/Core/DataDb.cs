using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Core
{
    public class DataDb
    {
        private Connection connection = new Connection();

        SqlDataReader read;
        DataTable table = new DataTable();
        SqlCommand command = new SqlCommand();

        public List<Empleado> ObtenerUsuario()
        {
            List<Empleado> ltsEmpleado = null;

            string query = "SELECT TOP 10 u.userId, u.Login, u.Nombre, u.Paterno, u.Materno, e.Sueldo FROM dbo.usuarios AS u INNER JOIN dbo.empleados AS e ON u.userId = e.userId ORDER BY u.userId DESC";

            command.Connection = connection.OpenConnection();
            command.CommandType = CommandType.Text;
            command.CommandText = query;
            read = command.ExecuteReader();
            table.Load(read);
            connection.CloseConnection();

            DataRowCollection tableRows = table.Rows;

            if (tableRows.Count > 0)
            {
                ltsEmpleado = new List<Empleado>();

                foreach (DataRow loFila in tableRows)
                {
                    Usuario usuario = new Usuario()
                    {
                        userId = int.Parse(loFila["userId"].ToString()),
                        Login = loFila["Login"].ToString(),
                        Nombre =loFila["Nombre"].ToString(),
                        Paterno =loFila["Paterno"].ToString(),
                        Materno = loFila["Materno"].ToString(),
                    };

                    Empleado empleado = new Empleado()
                    {
                        Sueldo = decimal.Parse(loFila["Sueldo"].ToString()),
                        usuario = usuario
                    };

                    ltsEmpleado.Add(empleado);
                }
            }
            return ltsEmpleado;
        }

        public bool VerificarUsuarioExiste(Usuario usuario)
        {
            bool usuarioExiste = false;

            string query = "SELECT COUNT(*) AS usuarioExiste FROM dbo.usuarios AS u WHERE u.Login = @Login OR (u.Nombre =@Nombre AND u.Paterno = @Paterno AND u.Materno= @Materno )";

            command.Connection = connection.OpenConnection();
            command.CommandType = CommandType.Text;
            command.CommandText = query;
            command.Parameters.AddWithValue("@Login", usuario.Login);
            command.Parameters.AddWithValue("@Nombre", usuario.Nombre);
            command.Parameters.AddWithValue("@Paterno", usuario.Paterno);
            command.Parameters.AddWithValue("@Materno", usuario.Materno);
            read = command.ExecuteReader();
            table.Load(read);
            connection.CloseConnection();

            DataRowCollection tableRows = table.Rows;

            if (tableRows.Count > 0)
            {

                foreach (DataRow loFila in tableRows)
                {
                    usuarioExiste = int.Parse(loFila["usuarioExiste"].ToString()) > 0;
                }
            }
            return usuarioExiste;
        }

        public Empleado ObtenerUsuarioPorId(int Usuario_ID)
        {
            Empleado objEmpleado = null;

            string query = "SELECT TOP 10 u.userId, u.Login, u.Nombre, u.Paterno, u.Materno, e.Sueldo FROM dbo.usuarios AS u INNER JOIN dbo.empleados AS e ON e.userId = u.userId WHERE u.userId = @userId";

            command.Connection = connection.OpenConnection();
            command.CommandType = CommandType.Text;
            command.CommandText = query;
            command.Parameters.AddWithValue("@userId",Usuario_ID);
            read = command.ExecuteReader();
            table.Load(read);
            connection.CloseConnection();

            DataRowCollection tableRows = table.Rows;

            if (tableRows.Count > 0)
            {
                

                foreach (DataRow loFila in tableRows)
                {
                    Usuario usuario= new Usuario()
                    {
                        userId = int.Parse(loFila["userId"].ToString()),
                        Login = loFila["Login"].ToString(),
                        Nombre = loFila["Nombre"].ToString(),
                        Paterno = loFila["Paterno"].ToString(),
                        Materno = loFila["Materno"].ToString(),

                    };

                    objEmpleado = new Empleado()
                    {
                        Sueldo = decimal.Parse(loFila["Sueldo"].ToString()),
                        usuario = usuario
                    };
                }
            }
            return objEmpleado;
        }

        public List<Empleado> ObtenerUsuarioEmpleado()
        {
            List<Empleado> ltsEmpleadoUsuario = null;

            string query = "SELECT u.Login, CONCAT(u.Nombre + ' ', u.Paterno + ' ', u.Materno) AS Nombre_Completo, e.Sueldo, e.FechaIngreso FROM dbo.usuarios AS u INNER JOIN dbo.empleados AS e ON e.userId = u.userId";

            command.Connection = connection.OpenConnection();
            command.CommandType = CommandType.Text;
            command.CommandText = query;
            read = command.ExecuteReader();
            table.Load(read);
            connection.CloseConnection();

            DataRowCollection tableRows = table.Rows;

            if (tableRows.Count > 0)
            {
                ltsEmpleadoUsuario = new List<Empleado>();

                foreach (DataRow loFila in tableRows)
                {
                    Usuario usuario = new Usuario()
                    {
                        Login = loFila["Login"].ToString(),
                        Nombre = loFila["Nombre_Completo"].ToString(),

                    };

                    Empleado empleado = new Empleado()
                    {
                        Sueldo = decimal.Parse(loFila["Sueldo"].ToString()),
                        FechaIngreso = DateTime.Parse(loFila["FechaIngreso"].ToString()),
                        usuario = usuario
                    };

                    ltsEmpleadoUsuario.Add(empleado);
                }
            }
            return ltsEmpleadoUsuario;
        }

        public bool ActualizarSalarioUsuario(Empleado empleado)
        {
            bool res = false;
            string query = "UPDATE dbo.empleados SET Sueldo = @Sueldo  WHERE userId = @Usuario_ID;";
            try
            {
                command.Connection = connection.OpenConnection();
                command.CommandText = query;
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Sueldo", empleado.Sueldo);
                command.Parameters.AddWithValue("@Usuario_ID", empleado.usuario.userId);
                int result = command.ExecuteNonQuery();
                if (result > 0)
                {
                    res = true;
                }
                command.Parameters.Clear();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ocurrio un error: " + ex.Message);
            }
            finally
            {
                connection.CloseConnection();
            }
            return res;
        }

        public int InsertarUsuario(Usuario usuario)
        {
            int Usuario_ID = 0;
            string query = "INSERT INTO dbo.usuarios(Login,Nombre,Paterno,Materno) OUTPUT Inserted.userId VALUES (@Login,@Nombre,@Paterno,@Materno);";

            try
            {
                command.Connection = connection.OpenConnection();
                command.CommandText = query;
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Login", usuario.Login);
                command.Parameters.AddWithValue("@Nombre", usuario.Nombre);
                command.Parameters.AddWithValue("@Paterno", usuario.Paterno);
                command.Parameters.AddWithValue("@Materno", usuario.Materno);

                Usuario_ID = (int)command.ExecuteScalar();

                command.Parameters.Clear();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Ocurrio un error al insertar el usuario: " + ex.Message);
            }
            finally{
                connection.CloseConnection();
            }
            return Usuario_ID;
        }

        public bool InsertarEmpleado(Empleado empleado)
        {
            bool res = false;
            string query = "INSERT INTO dbo.empleados(userId, Sueldo, FechaIngreso) VALUES(@Usuario_ID, @Sueldo, GETDATE());";

            try
            {
                command.Connection = connection.OpenConnection();
                command.CommandText = query;
                command.CommandType = CommandType.Text;
                command.Parameters.AddWithValue("@Usuario_ID", empleado.usuario.userId);
                command.Parameters.AddWithValue("@Sueldo", empleado.Sueldo);

                int result = command.ExecuteNonQuery();
                if (result > 0)
                {
                    res = true;
                }
                command.Parameters.Clear();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            finally
            {
                connection.CloseConnection();
            }
            return res;
        }
    }
}
