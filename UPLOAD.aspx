<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UPLOAD.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UpLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager runat="server" />    
    <style>
        .Fondo {
            background-color: darkred;
            color: antiquewhite;
            padding: 5px;
            text-align: center;
        }
    </style>

    <section id="Misdatos" class="container">

        <div class="text-center">

            <h2>MI RECOMENDACION</h2>
        </div>


    </section>


    <div class="container Fondo">


        <div class="row">

            <!--PRIMERA COLUMNA-->
            <div class="col-4 pt-4 m-1">

                <!--TITULO-->
                <div class="md-3">
                    <label for="Titulo" class="form-label pt-2" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Titulo</label>
                    <asp:TextBox ID="TxtTitulo" type="text" placeholder="Titulo" class="form-control" runat="server"></asp:TextBox>
                </div>

                <br />
                <!--CONTENIDO-->
                <div class="md-3">
                    <label for="Tipo" class="form-label pt-2" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Tipo de Contenido</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                        <label class="form-check-label" for="flexRadioDefault1">
                            Series
                        </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                        <label class="form-check-label" for="flexRadioDefault2">
                            Peliculas
                        </label>
                    </div>

                </div>

                <!--CATEGORIA-->

                <div class="row">
                    <label for="Categoria" class="form-label pt-3" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Categoria</label>

                    <div class="col-3 ps-2 m-2">

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Accion">
                            <label class="form-check-label" for="flexCheckDefault">
                                Accion
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Animacion" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Animacion
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="CienciaFiccion" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Ciencia Ficción
                            </label>
                        </div>


                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Comedia" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Comedia
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Documental" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Documental
                            </label>
                        </div>


                    </div>

                    <div class="col-3 ps-2 m-2">

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Drama" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Drama
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Fantasia" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Fantasía
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Suspenso" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Suspenso
                            </label>
                        </div>

                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="Terror" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Terror
                            </label>
                        </div>



                    </div>


                </div>
                <br />

                <!--pais-->
                <div>


                    <label for="Pais" class="form-label pt-3" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Pais</label>

                    <br />

                    <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                  

                    <br />

                </div>






            </div>
            <!--SEGUNDA COLUMNA-->
            <div class="col-4 pt-4 m-1">

                <div>

                    <!--DESCRIPCION-->
                    <div class="md-3">
                        <label for="Descripcion" class="form-label pt-2" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Descripcion</label>
                        <asp:TextBox ID="TxtDescripcion" type="text" placeholder="Descripcion" class="form-control" runat="server"></asp:TextBox>
                    </div>
                     <br />
                        <!--PLATAFORMA-->
                    <div>


                     <label for="Plataforma" class="form-label pt-3" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Plataforma</label>

                     <br />

                     <asp:DropDownList ID="plataformas" runat="server"></asp:DropDownList>
  

                     <br />

                        </div>
                        <!--FECHA DE ESTRENO-->
                        <div>


                    <label for="Fecha" class="form-label pt-3" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Fecha de estreno</label>

                    <br />

                            <asp:Calendar ID="Fecha" runat="server"></asp:Calendar>

                          <br />

                           </div>
                              
                    <!--URL-->
                    <div class="md-3">
                        <label for="URLImagen" class="form-label pt-2" font-size: medium; font-style: normal" style="color: #FFFFCC; font-style: normal; font-weight: bolder; font-family: 'Arial Black'; text-decoration: underline; font-size: large;">Link</label>
                        <asp:TextBox ID="URLImagen" type="text" placeholder="Link" class="form-control" runat="server"></asp:TextBox>
                    </div>
                     <br />
                   

                    <br>
                </div>



            </div>

             <!--TERCER COLUMNA-->
            <div class="col-3 pt-4  m-1">
                <asp:UpdatePanel ID="panelUpload" runat="server">
                    <ContentTemplate>   

                        <asp:Image ID="ImURL" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />



                    </ContentTemplate>
                </asp:UpdatePanel>
                
                 
            </div>

        </div>

    </div>











</asp:Content>
