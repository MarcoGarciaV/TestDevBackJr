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
    public partial class UsuarioDetalle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenaLista();
            }
        }

        public void LlenaLista()
        {
            lnkRegistrarUsuario.Visible = false;
            lnkModificaUsuario.Visible = false;
            informacionUsuarioDiv.Visible = false;
            informacionUsuarioTitulo.Visible = false;

            if (Request["id"] != null)
            {
                int Usuario_ID = int.Parse(Request["id"]);

                lnkModificaUsuario.Visible = true;

                Methods methods = new Methods();

                Empleado empleado = methods.ObtenerUsuarioPorId(Usuario_ID);
                if (empleado != null)
                {
                    txtLogin.Text = empleado.usuario.Login;
                    txtNombre.Text = empleado.usuario.Nombre;
                    txtPaterno.Text = empleado.usuario.Paterno;
                    txtMaterno.Text = empleado.usuario.Materno;
                    txtSueldo.Text = empleado.Sueldo.ToString();
                }
            }
            else
            {
                informacionUsuarioDiv.Visible = true;
                lnkRegistrarUsuario.Visible = true;
                informacionUsuarioTitulo.Visible = true;
            }
        }

        protected void lnkRegistrarUsuario_Click(object sender, EventArgs e)
        {
            if (validarCampos())
            {
                Methods methods = new Methods();

                Usuario usuario = new Usuario()
                {
                    Login = txtLogin.Text,
                    Nombre = txtNombre.Text,
                    Paterno = txtPaterno.Text,
                    Materno = txtMaterno.Text
                };
                bool usuarioExist =methods.VerificarUsuarioExiste(usuario);

                if (usuarioExist)
                {
                    registroError.InnerText = "El usuario ya existe";
                }
                else
                {
                    int Usuario_ID = methods.InsertarUsuario(usuario);

                    if (Usuario_ID > 0)
                    {

                        usuario.userId = Usuario_ID;

                        Empleado empleado = new Empleado()
                        {
                            Sueldo = decimal.Parse(txtSueldo.Text),
                            usuario = usuario
                        };

                        bool res = methods.InsertarEmpleado(empleado);
                        if (res)
                        {
                            Response.Redirect("~/index.aspx");
                        }
                        else
                        {
                            registroError.InnerText = "Ocurrio un error al registrar el sueldo";
                        }
                    }
                    else
                    {
                        registroError.InnerText = "Ocurrio un error al registrar el usuario";
                    }
                }
            }
            else
            {
                return;
            }
        }

        public bool validarCampos()
        {
            loginError.InnerText = "";
            nombreError.InnerText = "";
            paternoError.InnerText = "";
            maternoError.InnerText = "";
            sueldoError.InnerText = "";


            bool res = true;
            if (txtLogin.Text.Length == 0)
            {
                loginError.InnerText = "Debe Ingresar el Login";
                res = false;
            }

            if (txtNombre.Text.Length == 0)
            {
                nombreError.InnerText = "Debe Ingresar el nombre";
                res = false;
            }

            if (txtPaterno.Text.Length == 0)
            {
                paternoError.InnerText = "Debe Ingresar el apellido paterno";
                res = false;
            }

            if (txtMaterno.Text.Length == 0)
            {
                maternoError.InnerText = "Debe Ingresar el apellido materno";
                res = false;
            }

            if (txtSueldo.Text.Length == 0)
            {
                sueldoError.InnerText = "Debe Ingresar el sueldo";
                res = false;

            }
            else
            {
                decimal decimalValue;
                if (!decimal.TryParse(txtSueldo.Text, out decimalValue))
                {
                    sueldoError.InnerText = "Dene Ingresar solo números";
                    res = false;
                }
            }

            

            return res;
        }

        protected void lnkModificaUsuario_Click(object sender, EventArgs e)
        {
            if (validarCampos())
            {
                int Usuario_ID = int.Parse(Request["id"]);

                Methods methods = new Methods();

                Usuario usuario = new Usuario()
                {
                    userId = Usuario_ID
                };

                Empleado empleado = new Empleado()
                {
                   usuario = usuario,
                   Sueldo = decimal.Parse(txtSueldo.Text),
                };

                bool res= methods.ActualizarSalarioEmpleado(empleado);
                if (res)
                {
                    Response.Redirect("~/index.aspx");
                }
                else
                {
                    registroError.InnerText = "Ocurrio un error al actualizar el sueldo";
                }
            }
            else
            {

                return;
            }
        }

        protected void lnkRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/index.aspx");
        }
    }
}