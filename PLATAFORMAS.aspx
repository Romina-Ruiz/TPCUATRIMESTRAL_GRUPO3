<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PLATAFORMAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.PLATAFORMAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Card con Botón Personalizado</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .custom-btn {
            background-color: #28a745;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }

            .custom-btn:hover {
                background-color: #218838;
            }

        .card-body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            text-align: center;
        }

        .card-img-center {
            width: 100%;
            max-width: 540px;
            height: auto;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>PLATAFORMAS</h2>
        <p>Aqui encontraras información de tus plataformas favoritas</p>
    </div>

    <div class="container">

        <div class="container-fluid p-1">

            <div class="row">
                <%--columna repetidor de plataformas--%>
                <div class="col-5">
                    <asp:Repeater runat="server" ID="repRepetidor">
                        <ItemTemplate>




                            <br>

                            <div class="card" style="max-width: 540px; position: relative;">
                                <img src="<%#Eval("UrlLogo") %>" class="card-img-center" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title"><%#Eval("Nombre") %></h5>
                                    <a href="<%#Eval ("UrlSitioWeb") %>" class="custom-btn">Visitar Web</a>
                                </div>
                            </div>


                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <div class="col pt-5 m-5">
                    <section id="ColIzq">

                        <div class="pt-5 m-5">

                            <asp:Image ID="Lateral1" runat="server" ImageUrl="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200"  Height="350" Width="350" />
                        </div>

                        <div class="pt-5 m-4">

                            <asp:Image ID="Lateral2" ImageUrl="https://www.enteratenoticias.com.ar/files/image/5/5933/65b0fe3196930.jpg" Height="350" Width="350" runat="server" />

                        </div>

                        
                        <div class="pt-5 m-5">

                            <asp:Image ID="Lateral3" ImageUrl="https://media.cdn.puntobiz.com.ar/112022/1669661401071.webp?cw=984&ch=553&extw=jpg" Height="350" Width="350" runat="server" />

                        </div>



                        <br>
                    </section>




                </div>


            </div>

        </div>

    </div>


</asp:Content>
