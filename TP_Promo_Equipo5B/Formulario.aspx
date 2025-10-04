<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="TP_Promo_Equipo5B.Formulario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .validacion{
            color:red;
            font-size 12px;

        }
    </style>
    <div class="container">
        <div class="row mb-3">
            <div class="col-md-4">
                <label for="txtDocumento" class="form-label">DNI</label>
                <asp:TextBox ID="txtDocumento" runat="server" CssClass="form-control" Text="21548796" AutoPostBack="true" OnTextChanged="txtDocumento_TextChanged"></asp:TextBox>
                <asp:RegularExpressionValidator cssClass="validacion" runat="server" ControlToValidate="txtDocumento" ValidationExpression="^\d{8}$" ErrorMessage="El DNI debe tener exactamente 8 números, sin puntos."/>
            </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control" Text="Juanito"></asp:TextBox>
                <asp:RequiredFieldValidator cssClass="validacion" ErrorMessage="El nombre es requerido" ControlToValidate="txtNombre" runat="server" />
            </div>
            <div class="col-md-3">
                <label for="txtApellido" class="form-label">Apellido</label>
                <asp:TextBox ID="txtApellido" runat="server" CssClass="form-control" Text="Argento"></asp:TextBox>
                <asp:RequiredFieldValidator cssClass="validacion" ErrorMessage="El Apellido es requerido" ControlToValidate="txtApellido" runat="server" />
                </div>
            <div class="col-md-4">
                <label for="txtEmail" class="form-label">Email</label>
                <div class="input-group has-validation">
                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" Text="email@email.com"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="validacion" runat="server" ControlToValidate="txtEmail" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ErrorMessage="Ingrese un email válido"></asp:RequiredFieldValidator>
                  </div>
            </div>
        </div>

        <div class="row mb-3">

            <div class="col-md-3">
                <label for="txtDireccion" class="form-label">Dirección</label>
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" Text="Mi ciudad"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="La direccion es requerido" ControlToValidate="txtDireccion" runat="server" />
            </div>

            <div class="col-md-3">
                <label for="txtCiudad" class="form-label">Ciudad</label>
                <asp:TextBox ID="txtCiudad" runat="server" CssClass="form-control" Text="Calle 123"></asp:TextBox>
                <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="La Ciudad es requerido" ControlToValidate="txtCiudad" runat="server" />
            </div>

            <div class="col-md-2">
                <label for="txtCP" class="form-label">CP</label>
                <asp:TextBox ID="txtCP" runat="server" CssClass="form-control" Text="xxxx"></asp:TextBox>
                <asp:RegularExpressionValidator cssClass="validacion" runat="server" ControlToValidate="txtCp" ValidationExpression="^\d+$" ErrorMessage="El Codigo Postal debe contener solo numeros"/>
                </div>
        </div>

        <div class="row mb-3">
            <div class="col-md-12">
                <div class="form-check p-0">
                    <asp:CheckBox ID="chkAcepto" runat="server" Text="Acepto términos y condiciones" />
                </div>
                <asp:Button ID="btnParticipar" CssClass="btn btn-primary" OnClick="btnParticipar_Click" runat="server" Text="Participar" />
            </div>
        </div>
    </div>
</asp:Content>

