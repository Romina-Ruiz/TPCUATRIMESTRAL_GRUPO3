<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Op_Admin.aspx.cs" Inherits="TPCuatrimestral_Grupo3.Op_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="Fondo">
        <h2>ADMINISTRADOR</h2>
    </div>

    <div class="row p-4">
       
        <div class="col-4 ">
            <nav class="nav flex-column">
                <a class="nav-link active fs-5 text-white" aria-current="page" href="#">Autorizar contenidos</a>
                <a class="nav-link fs-5 text-white" href="#">Modificar contenido</a>
                <a class="nav-link fs-5 text-white" href="#">Dar de baja Usuario</a>
                <a class="nav-link fs-5 text-white" href="#">Cargar plataforma</a>
                <a class="nav-link fs-5 text-white" href="#">Cargar categorias</a>
                <a class="nav-link fs-5 text-white" href="#">Cargar novedades</a>

            </nav>
           
        </div>


        <div class="col-6">
            
            <asp:Image ID="ImageAdm" runat="server" ImageUrl="~/video/sistema-informatico.png" />

        </div>

    </div>

</asp:Content>
