<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UP_PELICULAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UP_PELICULAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager runat="server" />


    <div class="Fondo">
        <h2>MI RECOMENDACION</h2>
        <h3>PELICULAS</h3>
    </div>

    <div class="container">

        <!--PRIMERA FILA/ROW-->

        <div class="row">
            <!--primera COLUMNA-->
            <div class="col-5 m-2">

                <!--TITULO-->
                <div class="md-0">
                    <label for="Titulo" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Titulo</label>
                    <asp:TextBox ID="TxtTitulo" type="text" placeholder="Titulo" class="form-control" runat="server" Height="50px"></asp:TextBox>
                </div>
            </div>

            <!--Segunda COLUMNA-->
            <div class="col-5 m-0">
                <!--PLATAFORMA-->
                <div>
                    <label for="Plataforma" class="form-label pt-3" style="color: #FFFFCC; font-size: 22px;">Plataforma</label>
                    <br>
                    <asp:DropDownList ID="DWLplataformas" runat="server" Height="35" Width="500"></asp:DropDownList>
                    <div />
                </div>
            </div>

        </div>

        <!--SEGUNDA FILA/ROW-->

        <div class="row">

            <!--primera COLUMNA-->
            <div class="col-5 m-2">
                <!--DESCRIPCION-->
                <div class="md-3">
                    <label for="Descripcion" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Descripcion</label>
                    <br>
                    <asp:Label ID="ResumenPeli" runat="server" Text="Label" Font-Size="Smaller">(Deja una descripción de la pelicula, tienes hasta 1000 palabras)</asp:Label>

                    <asp:TextBox ID="TxtResumenPeli" type="text" placeholder="Descripcion" class="form-control" runat="server" Height="300"></asp:TextBox>
                </div>
            </div>

            <!--Segunda COLUMNA-->
            <div class="col-5 m-2">
                <!--pais-->

                <div class="md-3">
                    <label for="Pais" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">País de Origen</label>
                    <br>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Smaller">(Si sabes el país de origen por favor seleccionalo)</asp:Label>
                    <asp:DropDownList ID="pais" runat="server" Height="35" Width="500"></asp:DropDownList>

                </div>

                <!--FECHA DE ESTRENO-->
                <br>
                <br>
                <label for="date" class="col" style="color: #FFFFCC; font-size: 22px;">Fecha  </label>
                <br>
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Size="Smaller">(Si sabes su fecha de estreno por favor seleccionalo)</asp:Label>
                <div class="datepicker position-relative border-1 p-4" id="datapicker">
                    <input type="text" id="date" />
                    <span class="input-group append">
                        <span class="input-group text bg-white"></span>
                    </span>
                </div>
                <br>
                   
                <label for="Duracion" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Duracion</label>
                 <br>
                 <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="Smaller">(Si sabes su duración ingresala aqui)</asp:Label>
                <br>
                <br>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30" Width="100"></asp:DropDownList>

                <asp:DropDownList ID="DropDownList2" runat="server" Height="30" Width="100"></asp:DropDownList>



            </div>

        </div>



        <!--TERCERA FILA/ROW-->

        <div class="row">

            <!--primera COLUMNA-->

            <!--CATEGORIA-->

            <div class="col-4 m-2">
                <label for="Categoria" class="form-label pt-3" style="color: #FFFFCC; font-size: 22px;">Categoria</label>
                <br>
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="Smaller">(Selecciona una o varias caterias)</asp:Label>
                
                <div class="col">
                    <br>
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

            <!--Segunda COLUMNA-->

            <!--URL-->
            <div class="col-5 m-0">
                <label for="URLImagen" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Link</label>
                <br>
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="Smaller">(Aqui puedes pegar el link de la foto de la pelicula que estas agregando)</asp:Label>
                <br>
                <asp:TextBox ID="URLImagen" type="text" placeholder="Link" class="form-control" runat="server"></asp:TextBox>
           
                 <br>
                 <br>

            <asp:UpdatePanel ID="panelUpload" runat="server">
                <ContentTemplate>

                    <asp:Image ID="ImURL" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                </ContentTemplate>
            </asp:UpdatePanel>

               </div>


        </div>



        <!--BOTON ACEPTAR-->
        <div class="row p-4">
            <div class="col-md-6 offset-md-3">
                <asp:Button ID="BtnCargarPeli" class="btn btn-danger btn-lg p-2 m-2" OnClick="BtnCargarPeli_Click" runat="server" Text="Cargar" Font-Size="X-Large" Height="50px" Width="200" />

            </div>


        </div>

    </div>

  

</asp:Content>
