<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UsuarioDetalle.aspx.cs" Inherits="TestDevBackJrApp.UsuarioDetalle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div runat="server" id="informacionUsuarioTitulo" visible="false"><h3>Información Usuario</h3></div>
                <hr />
                <div class="row">
                    <div id="informacionUsuarioDiv" runat="server" visible="false">
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label runat="server">Login</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtLogin" placeholder="Ingrese el login"></asp:TextBox>
                            <span id="loginError" runat="server" class="red" visible="true"></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label runat="server">Nombre</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtNombre" placeholder="Ingrese el Nombre"></asp:TextBox>
                            <span id="nombreError" runat="server" class="red" visible="true"></span>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <asp:Label runat="server">Apellido Paterno</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtPaterno" placeholder="Ingrese el apellido paterno"></asp:TextBox>
                            <span id="paternoError" runat="server" class="red" visible="true"></span>
                        </div>
                    </div>
                    <div class="col-md-6 mb-30">
                        <div class="form-group">
                            <asp:Label runat="server">Apellido Materno</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control"  ID="txtMaterno" placeholder="Ingrese el apellido materno"></asp:TextBox>
                            <span id="maternoError" runat="server" class="red" visible="true"></span>
                        </div>
                    </div>
                        </div>
                <h3 class="ml-12">Información Empleado</h3>
                <hr />
                    <div class="col-md-4">
                        <div class="form-group">
                            <asp:Label runat="server">Sueldo</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtSueldo" placeholder="Ingrese el sueldo" ></asp:TextBox>
                            <span id="sueldoError" runat="server" class="red" visible="true"></span>
                        </div>
                    </div>
                    <br />
                    <span id="registroError" runat="server" class="red"></span>
                    <div class="col-md-12">
                        <div class="form-group">
                            <asp:LinkButton runat="server" ID="lnkRegistrarUsuario" OnClick="lnkRegistrarUsuario_Click" CssClass="btn btn-success" visible="true">Registrar</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="lnkModificaUsuario" OnClick="lnkModificaUsuario_Click" CssClass="btn btn-warning" Visible="true">Modificar</asp:LinkButton>
                            <asp:LinkButton runat="server" ID="lnkRegresar" OnClick="lnkRegresar_Click" CssClass="btn btn-info" Visible="true">Regresar</asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
