using Core;
using Data;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestDevBackJrApp
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                llenaLista();
            }
        }

        protected void gvUsuarios_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvUsuarios.PageIndex = e.NewPageIndex;
            llenaLista();
        }

        public void llenaLista()
        {
            Methods methods = new Methods();

            List<Empleado> lstUsuarios = methods.ObtenerUsuarios();
            if (lstUsuarios != null)
            {
                if (lstUsuarios.Count > 0)
                {
                    gvUsuarios.DataSource = lstUsuarios;
                    gvUsuarios.DataBind();
                }
            }
        }

        protected void lnkEditar_Command(object sender, CommandEventArgs e)
        {
            string Usuario_ID = (sender as LinkButton).CommandArgument;
            Response.Redirect("~/UsuarioDetalle.aspx?id=" + Usuario_ID);
        }

        protected void AgregarUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/UsuarioDetalle.aspx");
        }

        protected void ArchivoCsv_Click(object sender, EventArgs e)
        {
            string srtFileName = "Empleado.csv";
            string srtFolder = "files";
            string strFilePath = Server.MapPath($"~/{srtFolder}/{srtFileName}");
            string strSeperator = ",";
            //StringBuilder sbOutput = new StringBuilder();

            Methods methods = new Methods();

            List<Empleado> lista = methods.ObtenerUsuarioEmpleado();

            if (lista != null)
            {
                if(lista.Count > 0)
                {
                    if (File.Exists(strFilePath))
                    {
                        File.Delete(strFilePath);
                    }

                    using (StreamWriter writer = File.AppendText(strFilePath))
                    {
                        string lineHeader = $"Login, Nombre Completo, Sueldo, Fecha Ingreso";
                        writer.WriteLine(lineHeader);

                        foreach (Empleado empleado in lista)
                        {
                            string lineBody = $"{empleado.usuario.Login}, {empleado.usuario.Nombre}, {empleado.Sueldo}, {empleado.FechaIngreso}";
                            writer.WriteLine(lineBody);
                        }
                    }

                    donwloadFile(srtFolder, srtFileName);
                }
            }

        }


        public void donwloadFile(string strFolder, string strFilename)
        {
            try
            {
                string PathFile = Server.MapPath($"~/{strFolder}/{strFilename}");
                bool result = File.Exists(PathFile);
                if (result == true)
                {
                    Response.ContentType = "application/octet-stream";
                    Response.AppendHeader("Content-Disposition", "attachment;filename=" + strFilename);
                    Response.TransmitFile(PathFile);
                    Response.End();
                    Console.WriteLine("File Found");
                }
                else
                {
                    Console.WriteLine("File not found");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

        }
    }
}