<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CHECK_CONTENIDO.aspx.cs" Inherits="TPCuatrimestral_Grupo3.CHECK_CONTENIDO" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>ADMINISTRAR CONTENIDOS</h2>
    </div>

    <div class="row p-4">

        <div class="col-4 ">
            <nav class="nav flex-column">
                <a class="nav-link active fs-5 text-white" aria-current="page" href="ABM_PELIS.aspx">ABM PELIS</a>
                <a class="nav-link fs-5 text-white" href="ABM_SERIES_2.aspx">ABM SERIES</a>


            </nav>

        </div>


        <div class="col-6">

            <asp:Image ID="ImageAdm" runat="server" ImageUrl="~/video/sistema-informatico.png" />

        </div>

        
                <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                 <asp:Button ID="Volver" OnClick="Volver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150"  Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>


    </div>
</asp:Content>
