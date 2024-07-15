<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SERIES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.SERIES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>SERIES <i class="bi bi-person-video p-1 "></i></h2>
        <h5>BUSCA, ELIGI Y COMENTA </h5>

    </div>


    <div class="row pt-3 text-center">
        <asp:Label ID="Lbl2" runat="server" Font-Size="XX-Large" Text="ESTAS SON LAS MEJORES PUNTUADAS"></asp:Label>
      </div>

    <!--CUERPO -->
    <div class="row">
        <!--COLUMNA 1-->
        <div class="col-3 bg-secondary text-center text-white">
            <div class="pt-4">
                
                
                <asp:Label ID="LblFiltro" Font-Bold="true" Font-Size="X-Large" runat="server" Text="BUSCA POR NOMBRE:"></asp:Label>
                <br>
                <br>
                <asp:TextBox ID="TxtFiltroS" Width="300px" AutoPostBack="true" OnTextChanged="TxtFiltroS_TextChanged" Height="40px" runat="server"></asp:TextBox>
                
                <br>
                <br>
              
            </div>
            <br>
            <br>
             <asp:Label ID="Lblopc" runat="server" Font-Bold="true" Font-Size="X-Large" Text="MAS OPCIONES DE BUSQUEDAS:"></asp:Label>
            <br>
            <br>
            <div class="dropdown">
                <a class="btn btn-info dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bolder; font-size: 23px">Categorias
                </a>
                <ul class="dropdown-menu">
                    <li>
                        <asp:LinkButton ID="LkbAccion" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Accion</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbAnimacion" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Animacion </asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbCiencia" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Ciencia Ficcion</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbComedia" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Comedia</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbDocumental" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Documental</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LinkDrama" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Drama</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LinkFantasia" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Fantasia</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LinkSuspenso" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Suspenso</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LinkTerror" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Terror</asp:LinkButton></li>
                </ul>
            </div>

            <br />
            <br />
            <div class="dropdown">
                <a class="btn btn-info dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bolder; font-size: 23px">Continentes
                </a>

                <ul class="dropdown-menu">

                    <li>
                        <asp:LinkButton ID="LkbAmerica" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">America</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbAfrica" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Africa</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbAsia" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Asia </asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbEuropa" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Europa</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="LkbOceania" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">Oceania</asp:LinkButton></li>

                </ul>
            </div>
            <br />
            <br />
            <div class="dropdown">
                <a class="btn btn-info dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="font-weight: bolder; font-size: 23px">Año de Produccion
                </a>

                <ul class="dropdown-menu">

                    <li>
                        <asp:LinkButton ID="Lkb1" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">2020-2029</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="Lkb2" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">2010-2019</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="Lkb3" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">2000-2009 </asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="Lkb4" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">1990-1999</asp:LinkButton></li>
                    <li>
                        <asp:LinkButton ID="Lkb5" runat="server" Font-Size="Medium" Font-Overline="False" ForeColor="Black">1980-1989</asp:LinkButton></li>

                </ul>
            </div>


        </div>

        <!--COLUMNA RECOMENDACIONES -->


        <div class="col-5">
            <asp:Repeater runat="server" ID="repRepetidor">
                <ItemTemplate>

                    <br>

                                     
                        <div class="card" style="width:28rem; background-color: darkgrey">
                            <img src="<%#Eval("UrlImagenContenido") %>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title text-center" style="font-family: 'Berlin Sans FB Demi'; font-size: 31px; font-weight: bolder; color: #800000;"><%#Eval("Titulo") %></h5>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item " style="font-weight: bolder; font-style: normal">Plataforma: <%#Eval("Plataforma") %></li>
                                <li class="list-group-item" style="font-weight: bolder; font-style: normal">Temporadas: <%#Eval ("Temporadas") %></li>
                            </ul>

                            <div class="card-body">

                                <!--POCHOCLOS-->

                                <div class="text-start pt-1">

                                    <asp:Image ID="Image1" runat="server" ImageUrl="~/video/icono3.png" />
                                </div>

                                <div class="position-absolute bottom-0 end-0">
                                  <asp:Button ID="Button1" runat="server" class="btn btn-warning" Text="INFO" Font-Size="Medium" BorderColor="Black" BorderWidth="2" Font-Bold="True" CommandArgument='<%# Eval("ID") %>' OnClick="detalleSerie_Click" />
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
