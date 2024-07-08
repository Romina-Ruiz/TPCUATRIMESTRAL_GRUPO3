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
                <a class="nav-link active fs-5 text-white" aria-current="page" href="CHECK_CONTENIDO.aspx">ABM Contenidos</a>
                <a class="nav-link fs-5 text-white" href="ABM_USUARIOS.aspx">ABM Usuarios</a>
                <a class="nav-link fs-5 text-white" href="UP_PLATAFORMAS.aspx">Cargar plataforma</a>
                <a class="nav-link fs-5 text-white" href="UP_NOVEDADES.aspx">Cargar novedades</a>

            </nav>

        </div>


        <div class="col-6">

            <asp:Image ID="ImageAdm" runat="server" ImageUrl="~/video/sistema-informatico.png" />

        </div>

    </div>

    <!--BOTON VOLVER-->

    <div class="d-flex flex-row-reverse">
        <div class="p-2 m-3">
            <asp:Button ID="Volver" OnClick="Volver_Click" CssClass="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
        </div>

    </div>

</asp:Content>
