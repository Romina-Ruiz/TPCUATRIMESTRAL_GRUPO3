<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MenuLogin.aspx.cs" Inherits="TPCuatrimestral_Grupo3.MenuLogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br>
    <h2>  Estas logeado  </h2>
    <br><br>    
     <a href="HOME.aspx" type="button" class="btn btn-primary">Volver</a>
    <br><br>
    
    <% if(Session["Admin"] != null ) { %>
        
        <a href="HOME.aspx" type="button" class="btn btn-primary">Administrador</a>       

    <% } %>

</asp:Content>
