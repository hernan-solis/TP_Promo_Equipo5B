<%@ Page Title="Premio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Premio.aspx.cs" Inherits="TP_Promo_Equipo5B.Premio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1 class="text-center fw-bold">Elejí tu premio</h1>

<div class="row row-cols-1 row-cols-md-3 g-4">
    <asp:Repeater ID="RepRepetidor" runat="server" OnItemDataBound="RepRepetidor_ItemDataBound">
        <ItemTemplate>
             <div class="col">
                <div class="card">
 <div id="carousel-<%# Eval("Id") %>" class="carousel slide" data-bs-ride="carousel">     
           <div class="carousel-inner">
     <%-- Repeater para mostrar las imagenes --%>
                        <asp:Repeater ID="RepImagenes" runat="server">
                            <ItemTemplate>
                               <div class="carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>">
                                <img src="<%# Eval("Url") %>" class="img-carrusel" alt="Imagen de premio">                      
                           </div>
                            </ItemTemplate>
                        </asp:Repeater>
                     </div>    
     <button class="carousel-control-prev" type="button" data-bs-target="#carousel-<%# Eval("Id") %>" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Anterior</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carousel-<%# Eval("Id") %>" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Siguiente</span>
        </button>

    </div>

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

