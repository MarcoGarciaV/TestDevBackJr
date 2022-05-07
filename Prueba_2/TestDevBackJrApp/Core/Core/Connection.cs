using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace Core
{
    public class Connection
    {
        private SqlConnection Conn = new SqlConnection("Server=DESKTOP-DHDHF4L\\SQLEXPRESS;Database=TestDevBackJr;User Id=sa;Password=root;");

        public SqlConnection OpenConnection()
        {
            if (Conn.State == ConnectionState.Closed)
                Conn.Open();
            return Conn;
        }

        public SqlConnection CloseConnection()
        {
            if (Conn.State == ConnectionState.Open)
                Conn.Close();
            return Conn;
        }
    }
}
