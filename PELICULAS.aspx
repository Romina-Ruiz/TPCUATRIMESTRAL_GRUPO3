<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PELICULAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.PELICULAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>PELICULAS <i class="bi bi-film"></i></h2>
        <h5>BUSCA, ELIGI Y COMENTA </h5>
    </div>


    <div class="container">
        <!--CUERPO -->


        <div class="row ">
            <!--COLUMNA 1-->
            <div class="col-3 bg-secondary text-white pt-2">

                <h5>Poner los filros aca  </h5>
                <br>
            </div>

            <!--COLUMNA CARD RECOMENDACIONES -->
            <div class="col-5">
                <asp:Repeater runat="server" ID="repRepetidor">
                    <ItemTemplate>



                        <br>


                        <div class="card" style="width: 25rem; background-color: darkgrey">
                            <img src="<%#Eval("UrlImagenContenido") %>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title text-center" style="font-family: 'Berlin Sans FB Demi'; font-size: 31px; font-weight: bolder; color: #800000;"><%#Eval("Titulo") %></h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item " style="font-weight: bolder; font-style: normal">Plataforma:</li>
                                <li class="list-group-item" style="font-weight: bolder; font-style: normal">Duración:</li>
                                <li class="list-group-item" style="font-weight: bolder; font-style: normal">Categoria:</li>
                            </ul>

                            <div class="card-body">

                                <!--POCHOCLOS-->

                                <div class="text-start pt-1">

                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/video/icono3.png" />
                                </div>

                                <div class="position-absolute bottom-0 end-0">
                                    <asp:Button ID="detallepeli" runat="server" class="btn btn-warning" Text="INFO"  Font-Size="Medium" BorderColor="Black" BorderWidth="2" Font-Bold="True" CommandArgument='<%# Eval("ID") %>' OnClick="detallepeli_Click" />

                                </div>


                            </div>
                        </div>






                    </ItemTemplate>
                </asp:Repeater>
            </div>

            <!--COLUMNA 3-->
            <div class="col-3">

                <section id="ColIzq">

                    <div>
                        <img src="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" alt="imagen" height="400" width="470" />
                    </div>

                    <br>
                </section>

          

            </div>

        </div>



        <!--bloque de imagenes de abajo-->
        <div class="row pt-5">
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




    </div>

</asp:Content>
