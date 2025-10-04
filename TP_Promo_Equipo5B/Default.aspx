 <%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TP_Promo_Equipo5B._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
       <style>
       .validacion{
           color:red;
           font-size 12px;
       }
   </style>
    <main>
        <section class="d-flex justify-content-center align-items-center" aria-labelledby="Ingresá el codigo de tu vaucher!">
            <div>
                <div class="mb-3">
                    <label for="IngresaCodigoVaucher" class="form-label">Ingresá el codigo de tu vaucher!</label>
                    <asp:TextBox ID="tbxCodigoVaucher" type="text" class="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator CssClass="validacion" ErrorMessage="El codigo es requerido" ControlToValidate="tbxCodigoVaucher" runat="server" />

                    </div>
                <asp:Button ID="btnSiguiente" OnClick="btnSiguiente_Click" class="btn btn-primary w-100" runat="server" Text="Siguiente"/>
            </div>
        </section>

    </main>

</asp:Content>
