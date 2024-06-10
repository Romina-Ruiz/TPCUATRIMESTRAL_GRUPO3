<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.CINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="Fondo">
           <h2>NOVEDADES</h2>
        </div>


    <div class="container p-2">

        <div class="row">


            <!--menú izquierda-->

            <div class="col-2">

                <nav class="nav flex-column">
                    <a class="nav-link active fs-4 text-white" aria-current="page" href="#">Estrenos</a>

                    <a class="nav-link fs-4 text-white" href="#">Noticias</a>

                    <a class="nav-link fs-4 text-white" href="#">Entrevistas</a>

                    

                </nav>



            </div>

            <!--COLUMNA DERECHA-->


            <div class="col-10">

                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="..." class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                        </div>
                    </div>
                </div>


            </div>



            </div>


        </div>

    <div class="container">


    

        <div class="row p-2">

            <div class="col-6">

                <div class="card text-bg-dark">
                    <img src="https://es.web.img3.acsta.net/r_654_368/img/b5/15/b515e6ea09649e53dd6635f8132cd8ce.jpg" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">'La casa del dragón'</h5>
                        <p class="card-text"> Estrena su temporada 2 en unos días y ‘Fuego y sangre’ es el libro ideal para meterte de lleno en su historia.</p>
                        <p class="card-text"><small>8 jun. 2024 a las 12:00</small></p>
                    </div>
                </div>


            </div>

            <div class="col-6">

                <div class="card text-bg-dark">
                    <img src="https://es.web.img3.acsta.net/img/4b/9b/4b9b4309fcb155492c252196e65b350a.jpg" class="card-img" alt="...">
                    <div class="card-img-overlay">
                        <h5 class="card-title">"Los Vigilantes"</h5>
                        <p class="card-text">El cuento de fantasía, terror y suspense de Shyamalan: 'Los vigilantes', un potente relato en atmósfera y estética</p>
                        <p class="card-text"><small>6 jun. 2024 a las 18:00</small></p>
                    </div>
                </div>


            </div>



        </div>

        </div>

        <!--SECCION ABAJO-->

    <div class="container">
                        

        <div class="row p-2">

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
