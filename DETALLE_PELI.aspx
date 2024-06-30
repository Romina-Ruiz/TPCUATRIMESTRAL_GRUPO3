﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DETALLE_PELI.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DETALLE_PELI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>DETALLE DE LA PELICULA </h2>
    </div>


    <div class="Fondo">
        <h3>PONER ALGO </h3>
    </div>

    <div class="container-fluid ">

        <div class="row">

            <!--COLUMNA izquierda-->


            <div class="col bg-secondary text-white">

                <h5>Poner los filros aca  </h5>
                <br>
            </div>

            <!--COLUMNA medio-->
            <div class="col-9">
                <asp:Repeater runat="server" ID="repRepetidor">
                    <ItemTemplate>

                    
                <div class="card mb-3" style="max-width: 1000px;">
                    <div class="row g-0">

                        <!--IMAGEN de la card-->
                        <div class="col-md-4">
                            <img src="<%#Eval ("UrlImagen") %>" class="img-fluid rounded-start" alt="...">
                        </div>

                        <!--texto de la card-->
                        <div class="col-md-8">

                            <div class="card-header " style="font-family: 'Century Gothic'; font-size: 29px; font-weight: bolder; color: #800000; text-decoration: underline;">
                                <%#Eval ("Titulo") %>
                                 <div class="d-flex flex-row-reverse">
                                     <asp:Image ID="Image2" runat="server" ImageUrl="~/video/favorito 64.png" />
                                 </div>

                            </div>
                            <ul class="list-group list-group-flush">
                                <!--PLATAFORMA-->
                                <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Plataforma:
                                <asp:Label ID="Label1" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"> <%#Eval ("Plataforma") %></asp:Label>
                                </li>
                                <!--PAIS-->
                                <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">País de origen: 
                                <asp:Label ID="Label2" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"><%#Eval ("PaisOrigen") %></asp:Label>
                                </li>

                                <!--FEHA DE ESTRENO-->
                                <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Fecha de estreno: 
                                <asp:Label ID="Label3" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"><%#Eval ("FechaLanzamiento", "{0:yyyy-MM-dd}") %></asp:Label>
                                </li>

                                <!--DURACION-->
                                <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Duracion: 
                                <asp:Label ID="Label4" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"><%#Eval ("Duracion") %></asp:Label>
                                </li>

                                <!--CATEGORIAS-->

                                <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Categorias: 
                                <asp:Label ID="Label5" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"><%#Eval ("Categoria") %></asp:Label>
                                </li>

                            </ul>
                            <!--POCHOCLOS-->

                            <div class="text-start pt-1">

                                <asp:Image ID="Image1" runat="server" ImageUrl="~/video/icono3.png" />
                                <asp:Label ID="Label7" runat="server" CssClass="text-start text-danger" Text="" Font-Size="Small"><%#Eval ("PuntajePromedio") %></asp:Label>
                            </div>


                        </div>

                    </div>

                    <!--SINOPSIS-->
                    <div class="card p-0">
                        <div class="card-body text-start">
                            <h3 style="font-family: 'Century Gothic'; font-size: 29px; font-weight: bolder; color: #800000; text-decoration: underline;">SINOPSIS</h3>
                            <asp:Label ID="Label6" runat="server" Text=""> <%#Eval ("Descripcion") %></asp:Label>
                        </div>
                    </div>

                </div>

    </ItemTemplate>
</asp:Repeater>
            </div>

            <!--COLUMNA derecha-->
            <div class="col">
            </div>


        </div>

        <!--FIN DE LA PRIMERA ROW-->

        <!--SEGUNDA ROW-->

        <div class="row comentarios justify-content-center">

            <!--COLUMNA izquierda-->


            <div class="col-2">
            </div>

            <!--COLUMNA medio-->
            <div class="col-6 ">

                <h5 class="text-center" style="font-weight: 400; font-size: 30px; text-decoration: underline; font-family: 'Century Gothic'">COMENTARIOS</h5>


                <div class="mb-3 form_comentarios">
                    <label for="exampleFormControlTextarea1" class="form_label">Nombre Usuario</label>


                    <textarea class="form-control" placeholder="comentar" id="Comentar" rows="3"> </textarea>

                    <div class="position-relative bottom-0 end-0">
                        <a href="#" class="link-secondary">Responder</a>
                        <a href="#" class="link-secondary">Borrar</a>

                    </div>

                    <div class="d-flex flex-row-reverse">
                        <asp:Button ID="Button1" runat="server" Text="Comentar" class="btn btn-primary" BorderStyle="Groove" BorderColor="White" BorderWidth="3px" Font-Bold="True" ForeColor="White" />

                    </div>

                </div>



            </div>

            <div class="col-2">

                <section id="ColIzq">

                    <div>
                        <img src="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" alt="imagen" height="400" width="470" />
                    </div>

                    <br>
                </section>

            </div>



        </div>


        <!--FIN DE LA SEGUNDA ROW-->


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <asp:Button ID="Button2" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>

    </div>


</asp:Content>
