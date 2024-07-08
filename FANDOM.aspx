<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="FANDOM.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ESTRENOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2><i class="bi bi-star"></i>FANDOM <i class="bi bi-star"></i></h2>
        <div class=" text-center p-3 fw-semibold ">

            <h6>Estos son los consejos de nuestra comunidad, podes puntuarlos y comentarlos   </h6>

            <h6>Tambien podes abrir un debate en el foro e interactuar con otros fans  </h6>

        </div>
    </div>

    <!--CUERPO -->

    <div class="row  p-0.5">

        <!--COLUMNA 1-->
        <div class="col-3 text-dark" style="border-style: outset; border-width: thin; background-color: #FFCC00;">

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
                             <a class="dropdown-item" href="FANDOM_SERIES.aspx" style="color: #FF0000; font-weight: bolder; font-size: 18px" >Series</a>
                            <li>
                             <a class="dropdown-item" href="FANDOM_PELIS.aspx" style="color: #FF0000; font-weight: bolder; font-size: 18px" >Peliculas</a>
                        </ul>
                    </div>

                    <br>

                    <div class="p-1">
                        <a class="text-dark" href="#" style="font-size: 24px; font-weight: bolder; color: #0000; text-decoration: none">Foro</a>
                        <br>
                    </div>

                    <div class="p-1">
                        <a class="text-dark" href="UPLOAD.aspx" style="font-size: 24px; font-weight: bolder; color: #0000; text-decoration: none">Mi Recomendación</a>
                    </div>

                </nav>
                <br>
            </div>

            <br><br><br>
            
            <div class="row 5">                
                                           
              <img src="video/viendoPelicula.gif" />             

            </div>

        </div>

        <!--COLUMNA DERECHA-->
        <div class="col-4 p-5">

            <section id="ColIzq">

                <div>

                    <asp:Image ID="Lateral1" runat="server" ImageUrl="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" Height="500" />
                </div>


                <br>
            </section>

        </div>

    </div>



    <!--SECCION ABAJO-->

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


</asp:Content>
