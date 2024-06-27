<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PLATAFORMAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.PLATAFORMAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div class="Fondo">
            <h2>PLATAFORMAS</h2>
            <p>Aqui encontrara información de tus plataformas favoritas</p>
        </div>

    <div class="container">
   
    <div class="container-fluid p-1">

        <div class="card mb-3" style="max-width:1000px;">
            <div class="row g-0">
                <div class="col-md-4 bg-dark">
                    <img src="https://images.ctfassets.net/y2ske730sjqp/1aONibCke6niZhgPxuiilC/2c401b05a07288746ddf3bd3943fbc76/BrandAssets_Logos_01-Wordmark.jpg?w=940" class="img-fluid rounded-start" alt="..." border="0">
                </div>
                <div class="col-md-8">
                    <div class="card-body text-bg-dark p-3">
                        <h5 class="NETFLIX">NETFLIX</h5>
                        <p class="card-text"> la compañía nació en 1997 como un servicio que permitía recibir DVD por correo postal y fue en 2007 cuando lanzó su primer servicio de contenidos en streaming en Estados Unidos. 
                            A España llegó ocho años más tarde y su principal baza es un catálogo muy extenso con títulos para todos los gustos y, sobre todo, la producción propia, tanto a nivel internacional como en cada uno de los mercados en los que está presente, con películas y series protagonizadas por actores locales y adaptadas al gusto del país. Las producciones que logran más éxito se exportan a nivel mundial.</p>
                        <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
        <%--columna repetidor de plataformas--%>
                 <div class="col-5">
        <asp:Repeater runat="server" ID="repRepetidor">
            <ItemTemplate>


                

<br>

<div class="card text-bg-light border-warning mb-3" style="max-width: 540px;">
    <div class="row g-0">
        <div class="col-md-4">
            
        </div>
        <div class="col-md-8">
            <div class="card-body">
                <h5 class="card-title"><%#Eval("Nombre") %></h5>
                <img src="<%#Eval("UrlLogo") %>" class="img-fluid rounded-start" alt="...">
                <p class="card-text"><small class="text-body-secondary">Fecha y otros datos</small></p>
            </div>
        </div>
    </div>
</div>




            </ItemTemplate>
        </asp:Repeater>
        </div>


             </div>

         </div>


</asp:Content>
