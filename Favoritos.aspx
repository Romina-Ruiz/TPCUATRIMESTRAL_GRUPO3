<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Favoritos.aspx.cs" Inherits="TPCuatrimestral_Grupo3.Favoritos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
    <h2>ESTOS SON TUS FAVORITOS</h2>
</div>

<div class="row p-4">
   
    <div class="col-4 text-center pt-5">
        <nav class="nav flex-column">
            <a class="nav-link active fs-5 text-white" aria-current="page" href="#">Peliculas</a>
            <a class="nav-link fs-5 text-white" href="#" >Series</a>
         
        </nav>
       
    </div>


    <div class="col-6">
        
        <asp:Image ID="ImageAdm" runat="server" ImageUrl="~/video/palomitas.png" />

    </div>

</div>


</asp:Content>
