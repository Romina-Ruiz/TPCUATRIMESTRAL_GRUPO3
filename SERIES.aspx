﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SERIES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.SERIES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>SERIES <i class="bi bi-person-video p-1 "></i></h2>
        <h5>Busca, elegí y comenta </h5>

    </div>


    <!--CUERPO -->    
        <div class="row p-0.5">
            <!--COLUMNA 1-->
            <div class="col-3 bg-warning-subtle text-dark">

                <h5>Poner los filros aca  </h5>
                <br>
            </div>

            <!--COLUMNA RECOMENDACIONES -->


            <div class="col-5">

                <br>

                <div class="card text-bg-light border-warning mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="..." class="img-fluid rounded-start" alt="...">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <h5 class="card-title">TITULO PELICULA</h5>
                                <p class="card-text">Descripciones</p>
                                <p class="card-text"><small class="text-body-secondary">Fecha y otros datos</small></p>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

            <!--COLUMNA 3-->
            <div class="col-3">

                <section id="ColIzq">

                    <div>
                        <img src="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" alt="imagen" Height="400" width="470"/>
                                        
                    </div>

                    <br>
                </section>

            </div>

        </div>

   

    <!--bloque de imagenes de abajo-->
    <div class="row">
        <div class="col-4 p-0.5">
            <img src="https://assets.tvnotas.com.mx/dims4/default/16271fb/2147483647/strip/true/crop/2880x1620+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fk3-prod-tvnotas.s3.us-west-2.amazonaws.com%2Fbrightspot%2F4d%2F91%2F4cf7bd8944158d1e796b5530461d%2Fdescarga-3.jpg" alt="imagen1" height="250" width="450" />
        </div>

        <div class="col-4">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iD1s2Ww_vNRahZ8IVHWG5h8JnNBN4pOXqQ&s" alt="imagen2" height="250" width="450" />
        </div>
        <div class="col-4">
            <img src="https://media.primicias.ec/2024/02/08114547/marvels.jpg" alt="imagen3" height="250" width="450" />

        </div>
    </div>







</asp:Content>
