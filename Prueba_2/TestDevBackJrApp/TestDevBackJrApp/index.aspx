<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="TestDevBackJrApp.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 mt-15 mb-15">
                <asp:LinkButton runat="server" CssClass="btn btn-info" ID="AgregarUsuario" OnClick="AgregarUsuario_Click">Agregar Usuario</asp:LinkButton>
                <asp:LinkButton runat="server" CssClass="btn btn-info" ID="ArchivoCsv" OnClick="ArchivoCsv_Click">Archivo Csv</asp:LinkButton>
            </div>
            <div class="col-md-12">
                <asp:GridView runat="server" ID="gvUsuarios" CssClass="table table-bordered table-hover" GridLines="None" AutoGenerateColumns="false"
                    AllowPaging="true" OnPageIndexChanging="gvUsuarios_PageIndexChanging">
                    <Columns>
                            <asp:TemplateField HeaderText="Editar" ItemStyle-HorizontalAlign="Center" >
                              <ItemTemplate>
                                  <asp:LinkButton ID="lnkEditar" CommandArgument='<%# Eval("usuario.userId")%>' OnCommand="lnkEditar_Command" runat="server">
                                            <span class="glyphicon glyphicon-pencil"></span>
                                  </asp:LinkButton>
                              </ItemTemplate>
                          </asp:TemplateField>
                        <asp:BoundField DataField="usuario.Login" HeaderText="Login" />  
                        <asp:BoundField DataField="usuario.Nombre" HeaderText="Nombre" />  
                        <asp:BoundField DataField="usuario.Paterno" HeaderText="Paterno" />  
                        <asp:BoundField DataField="usuario.Materno" HeaderText="Materno" /> 
                        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" /> 
                    </Columns>
                    <EmptyDataTemplate>
                      <p>No se encontraron registros</p>
                    </EmptyDataTemplate>
                    <PagerStyle CssClass="pagination-ns" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
