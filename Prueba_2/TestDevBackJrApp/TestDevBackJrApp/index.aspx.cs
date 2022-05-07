using Core;
using Data;
using System;
using System.Collections.Generic;
using System.Linq;
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

            List<Usuario> lstUsuarios = methods.ObtenerUsuarios();
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
    }
}