<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MICUENTA.aspx.cs" Inherits="TPCuatrimestral_Grupo3.MICUENTA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>MI CUENTA</h2>

        <% if (Session["Admin"] != null)
            { %>

        <h2>Administrador</h2>

        <% } %>
    </div>

    <div class="row">

        <!--menú izquierda-->
        <div class="col-4 p-0.5">
            <nav class="nav flex-column">
                <a class="nav-link active fs-5 text-white" aria-current="page" href="MisDatos.aspx">Mis Datos</a>
                <a class="nav-link fs-5 text-white" href="#">Favoritos</a>
                <a class="nav-link fs-5 text-white" href="#">Mensajes</a>
                <a class="nav-link fs-5 text-white" href="UPLOAD.aspx">Mi Recomendacion</a>
                <a class="nav-link fs-5 text-white" href="Op_Admin.aspx">Administrador</a>
            </nav>
            <br>
        </div>

        <!--COLUMNA DERECHA-->
        <div class="col-5 p-5">
            <img src="video/sillon.png" class="opacity-50" alt="Alternate Text" height="350" width="350" />
        </div>
        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <asp:Button ID="BtnVolver" OnClick="BtnVolver_Click"  class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>

    </div>

    <div class="row">
        <div class="col-4 p-0.5">
            <img src="https://assets.tvnotas.com.mx/dims4/default/16271fb/2147483647/strip/true/crop/2880x1620+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fk3-prod-tvnotas.s3.us-west-2.amazonaws.com%2Fbrightspot%2F4d%2F91%2F4cf7bd8944158d1e796b5530461d%2Fdescarga-3.jpg" alt="imagen1" height="250" width="450" />
        </div>

        <div class="col-4">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iD1s2Ww_vNRahZ8IVHWG5h8JnNBN4pOXqQ&s" alt="imagen2" height="250" width="450" />
            <!-- <asp:Image ID="imagePie2" runat="server" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iD1s2Ww_vNRahZ8IVHWG5h8JnNBN4pOXqQ&s" Height="200" Width="450" />-->
        </div>
        <div class="col-4">
            <img src="https://media.primicias.ec/2024/02/08114547/marvels.jpg" alt="imagen3" height="250" width="450" />
            <!--     <asp:Image ID="imagePie3" runat="server" ImageUrl="https://media.primicias.ec/2024/02/08114547/marvels.jpg" Height="250" Width="400" />-->
        </div>
    </div>


</asp:Content>
