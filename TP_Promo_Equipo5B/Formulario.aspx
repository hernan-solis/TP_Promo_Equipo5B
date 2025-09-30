<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_Promo_Equipo5B.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="txtDocumento" class="form-label">DNI</label>
                <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control" Text="21548796"></asp:TextBox>

            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Text="Juanito"></asp:TextBox>

            </div>
            <div class="col-md-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" Text="Argento"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label for="txtEmail" class="form-label">Email</label>
                <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="email@email.com"></asp:TextBox>
                 </div>  
            </div>
        </div>
        <div class="row mb-3">

            <div class="col-md-3">
                <label for="txtDireccion" class="form-label">Dirección</label>
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" Text="Mi ciudad"></asp:TextBox>

            </div>

            <div class="col-md-3">
                <label for="txtCiudad" class="form-label">Ciudad</label>
                <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" Text="Calle 123"></asp:TextBox>
            </div>

            <div class="col-md-2">
                <label for="txtCP" class="form-label">CP</label>
                <asp:TextBox ID="txtCP" runat="server" CssClass="form-control" Text="xxxx"></asp:TextBox>
            </div>

        </div>
    </div>
    


</asp:Content>

