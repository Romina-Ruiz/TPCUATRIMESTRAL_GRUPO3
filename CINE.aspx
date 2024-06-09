﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CINE.aspx.cs" Inherits="TPCuatrimestral_Grupo3.CINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        .Fondo {
            background-color: darkred;
            color: antiquewhite;
            padding: 5px;
            text-align: center;
        }
    </style>


    <section class="container">

        <div class="Fondo">


            <h2 style="font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif; font-size: xx-large; font-weight: 2000">CINE</h2>


        </div>


    </section>



    <div class="container">

        <div class="row">


            <!--menú izquierda-->

            <div class="col-2 p-4">


                <nav class="nav flex-column">
                    <a class="nav-link active fs-4 text-white" aria-current="page" href="REGISTROS.aspx">Estrenos</a>

                    <a class="nav-link fs-4 text-white" href="#">Novedades</a>

                    <a class="nav-link fs-4 text-white" href="#">Entrevistas</a>



                </nav>

                <br />
                <br />
                <br />

            </div>

            <!--COLUMNA DERECHA-->


            <div class="col-4 ">
            </div>

            <div class="col-5">

                <img src="video/entrada-de-cine.png" class="opacity-50" alt="Alternate Text" height="300" width="300" />

            </div>




        </div>


        <div class="row">

            <div class="col-4">

                <asp:Image ID="imagePie1" runat="server" ImageUrl="https://assets.tvnotas.com.mx/dims4/default/16271fb/2147483647/strip/true/crop/2880x1620+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fk3-prod-tvnotas.s3.us-west-2.amazonaws.com%2Fbrightspot%2F4d%2F91%2F4cf7bd8944158d1e796b5530461d%2Fdescarga-3.jpg" Height="200" Width="400" />
            </div>

            <div class="col-4">

                <asp:Image ID="imagePie2" runat="server" ImageUrl="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iD1s2Ww_vNRahZ8IVHWG5h8JnNBN4pOXqQ&s" Height="200" Width="400" />
            </div>
            <div class="col-4">

                <asp:Image ID="imagePie3" runat="server" ImageUrl="https://media.primicias.ec/2024/02/08114547/marvels.jpg" Height="200" Width="400" />
            </div>

        </div>








    </div>







</asp:Content>
