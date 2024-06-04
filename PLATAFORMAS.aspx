<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PLATAFORMAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.PLATAFORMAS" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater runat="server" id="repRepetidor">
        <ItemTemplate>
            <h1>Contenido</h1>
            <div class="card" style="width: 18rem;">
  <div class="card-body">
    <h5 class="card-title"><%#Eval("Titulo") %></h5>
    <p class="card-text"><%#Eval("Descripcion") %></p>
      <h2><%#Eval("FechaLanzamiento") %></h2>
      <p class="card-text"><%#Eval("EstrellasPromedio") %></p>

    <a href="#" class="btn btn-primary">Go somewhere</a>
  </div>
</div>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>
