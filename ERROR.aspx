<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ERROR.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ERROR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <div class="card text-center" style="border: none; color: antiquewhite">
        <div class="card-body" style="background: #000f;">
            <h2>Ooops usuario o contraseña incorrectos... </h2>
            <br>
            <img src="video/error_contrasena.jpg" style="width: 19rem;" class="img-thumbnail" alt="imagen" />
                        
          <!--  <asp:Label ID="Label1" runat="server" Text="msnError"></asp:Label>-->
            <br><br>            
            <a href="LOGIN.aspx" style="background: #808080; border: none" class="btn btn-primary">Volver</a>
           
        </div>

    </div>



</asp:Content>
