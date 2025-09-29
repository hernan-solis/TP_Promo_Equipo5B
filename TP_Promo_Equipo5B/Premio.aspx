<%@ Page Title="Premio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premio.aspx.cs" Inherits="TP_Promo_Equipo5B.Premio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1 class="text-center fw-bold">Elejí tu premio</h1>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <asp:Repeater ID="RepRepetidor" runat="server" OnItemDataBound="RepRepetidor_ItemDataBound">
        <ItemTemplate>
             <div class="col">
                <div class="card">
                     <%-- REPEATER ANIDADO Para mostrar las imagenes --%>
                        <asp:Repeater ID="RepImagenes" runat="server">
                            <ItemTemplate>
                                <img src="<%# Eval("Url") %>" class="card-img-top" alt="Imagen de premio">
                            </ItemTemplate>
                        </asp:Repeater>
                        <%-- FIN REPEATER ANIDADO --%>
                 <div class="card-body">
                    <h5 class="card-title">"<%#Eval("Nombre")%>"</h5>
                    <p class="card-text">"<%#Eval("Descripcion")%>"</p>                  
                 </div>
                 </div>
                 </div>
        </ItemTemplate>
    </asp:Repeater>
    
 
  </div>


</asp:Content>

