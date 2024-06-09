<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FANDOM.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ESTRENOS" %>

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

    <section id="FANDOM" class="container">

        <div class="Fondo pt-3 fw-bolder">


            <h2 style="font-family: Broadway; font-size: 37px; font-weight: bolder; font-style: normal;"><i class="bi bi-star"></i>     FANDOM     <i class="bi bi-star"></i></h2>
        

        <div class=" text-center p-3 fw-semibold ">

            <h6 class="fw-semibold">Estos son los consejos de nuestra comunidad, podes puntuarlos y comentarlos   </h6>
         
            <h6 class="fw-semibold">Tambien podes abrir un debate en el foro e interactuar con otros fans  </h6>
            
        </div>
        </div>

    </section>


    <!--CUERPO -->

    <div class="container">
        <div class="row p-1">


            <!--COLUMNA 1-->
            <div class="col-4 text-dark" style="border-style: outset; border-width: thin; background-color: #FFCC00;">

                <!--menú izquierda-->

                <div class="p-2">

                    <nav class="nav flex-column">

                        <br>

                        <div class="btn-group m-3">
                            <button type="button" class="btn btn-danger btn-lg dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
                                ¿QUE VER?
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end">
                                <li>
                                    <button class="dropdown-item" type="button" href="#">Series</button></li>
                                <li>
                                    <button class="dropdown-item" type="button" href="#">Peliculas</button></li>



                            </ul>
                        </div>

                        <br>

                        <div class="p-1">

                            
                            <a class="text-dark"  href="#" style="font-family: 'Arial Black'; font-size: x-large; font-style: normal; font-weight: bolder; color: #000000; text-decoration: none">Foro</a>

                            <br>
                        </div>


                        <div class="p-1">

                      
                            <a class="text-dark"  href="UPLOAD.aspx" style="font-family: 'Arial Black'; font-size: x-large; font-style: normal; font-weight: bolder; color: #000000; text-decoration: none">Subir Contenido</a>

                        </div>

                       
                    </nav>


                </div>

                <div class="me-5">
                    <br />
                      <br />
                      <br />
                      <br />
                      <br />
                      <br />
                      <br />
                    <asp:Image ID="Image1" runat="server"  ImageUrl="~/video/viendo-una-pelicula 3.png" />
                </div>
                


            </div>

            <!--COLUMNA CENTRO -->


            <div class="col-1">
            </div>

            <!--COLUMNA DERECHA-->
            <div class="col-3">

                <section id="ColIzq">

                    <div>

                        <asp:Image ID="Lateral1" runat="server" ImageUrl="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" Height="500" />
                    </div>


                    <br>
                </section>

            </div>

        </div>

        <!--SECCION ABAJO-->

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
