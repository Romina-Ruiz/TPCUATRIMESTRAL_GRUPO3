﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UP_PLATAFORMAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UP_PLATAFORMAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>CARGAR NUEVA PLATAFORMA</h2>
    </div>

    <div class="container">

        <!--PRIMERA ROW-->




        <div class="row justify-content-around p-5">

            <div class="col-4 text-star">
              <asp:Label ID="LblNombre" runat="server" Text="Label" Font-Size="Medium" Font-Bold="True">NOMBRE:</asp:Label>
              <asp:TextBox ID="TxtNombre" runat="server" Width="400" Height="50"></asp:TextBox>
                <br />
            
                <div class="pt-5">
                <asp:Label ID="LblURL" runat="server" Text="Label" Font-Size="Medium" Font-Bold="True">URL PAGINA:</asp:Label>
              <asp:TextBox ID="TxtURL" runat="server" Width="400" Height="50"></asp:TextBox>
            </div>
            
            </div>

            <div class="col-4 ms-2">

                <asp:Label ID="LblImg" runat="server" Text="Label" Font-Size="Medium" Font-Bold="True">LINK LOGO:</asp:Label>
                <asp:TextBox ID="TxtImg" AutoPostBack="true" OnTextChanged="TxtImg_TextChanged" runat="server" Width="400" Height="50"></asp:TextBox>
                <div class="pt-5">
                <asp:Image ID="Imagen" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="100px" Height="100px" runat="server" />
                 </div> 
            </div>
           

        </div>
        <!--SEGUNDA ROW-->


        <div class="container text-center">

            <div class="col">


                <asp:Button ID="BtnAceptar" OnClick="BtnAceptar_Click" class="btn btn-danger" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="ACEPTAR" />
               
                <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            
            </div>

        </div>


        <!--TERCERA ROW-->


        <div class="row pt-5">
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





    </div>






</asp:Content>
