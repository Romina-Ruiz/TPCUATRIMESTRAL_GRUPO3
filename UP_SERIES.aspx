<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UP_SERIES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UP_SERIES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:ScriptManager runat="server" />


    <div class="Fondo">
        <h2>MI RECOMENDACION</h2>
        <h3>SERIES</h3>
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
                    <asp:DropDownList ID="DWLPlataformas2" runat="server" Height="35" Width="500"></asp:DropDownList>
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
                    <asp:Label ID="ResumenSerie" runat="server" Text="Label" Font-Size="Smaller">(Deja una descripción de la serie, tienes hasta 1000 palabras)</asp:Label>

                    <asp:TextBox ID="TxtResumenSerie" TextMode="MultiLine" type="text" placeholder="Descripcion" class="form-control" runat="server" Height="200"></asp:TextBox>
                </div>


                <!--FECHA DE ESTRENO-->
                <br>
                <br>
                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                    <ContentTemplate>

                        <label class="col" style="color: #FFFFCC; font-size: 22px;">Fecha</label>
                        <br>
                        <label style="font-size: 12.8px">(Si sabes su fecha de estreno por favor seleccionalo)</label>
                        <div class="datepicker position-relative border-01 p-4" id="datapicker">
                            <asp:TextBox ID="txtFechaSerie" CssClass="form-control" runat="server"></asp:TextBox>

                            <span class="input-group append">
                                <span class="input-group text bg-white"></span>
                            </span>
                        </div>
                        <script>
                            $(function () {
                                $("#<%= txtFechaSerie.ClientID %>").datepicker();
                            });
                        </script>

                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>


            <!--Segunda COLUMNA-->
            <div class="col-5 m-2">
                <!--pais-->

                <div class="md-3">
                    <label for="Pais" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">País de Origen</label>
                    <br>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Smaller">(Si sabes el país de origen por favor seleccionalo)</asp:Label>
                    <asp:DropDownList ID="DWLPais2" runat="server" Height="35" Width="500"></asp:DropDownList>

                </div>

                <br>

                <div class="p-5">

                    <asp:Label ID="Label5" runat="server" Text="Label" Font-Size="Medium">Sabes las temporadas que tiene ingresa aquí</asp:Label>
                    <br>
                    <asp:DropDownList ID="DropDownTemporada" runat="server" Height="30" Width="150">
                        <asp:ListItem Text="0" />
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                        <asp:ListItem Text="7" />
                        <asp:ListItem Text="8" />
                        <asp:ListItem Text="9" />
                        <asp:ListItem Text="10 o más" />
                    </asp:DropDownList>
                    <label for="Temporadas" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Temporadas</label>

                </div>

                <div class="p-5">
                    <asp:Label ID="Label6" runat="server" Text="Label" Font-Size="Medium">Si sabes los capítulos que tiene ingresa aquí</asp:Label>
                    <br>
                    <asp:DropDownList ID="DWLCapitulos" runat="server" Height="30" Width="150">
                        <asp:ListItem Text="0" />
                        <asp:ListItem Text="1" />
                        <asp:ListItem Text="2" />
                        <asp:ListItem Text="3" />
                        <asp:ListItem Text="4" />
                        <asp:ListItem Text="5" />
                        <asp:ListItem Text="6" />
                        <asp:ListItem Text="7" />
                        <asp:ListItem Text="8" />
                        <asp:ListItem Text="9" />
                        <asp:ListItem Text="10 o más" />
                    </asp:DropDownList>
                    <label for="Capitulos" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Capitulos</label>

                </div>

            </div>

        </div>

    </div>



    <!--TERCERA FILA/ROW-->

    <div class="row">

        <!--primera COLUMNA-->

        <!--CATEGORIA-->

        <div class="col-4 m-2">
            <label for="Categoria" class="form-label pt-3" style="color: #FFFFCC; font-size: 22px;">Categoria</label>
            <br>
            <asp:Label ID="Label3" runat="server" Text="Label" Font-Size="Smaller">(Selecciona una o varias categorias)</asp:Label>

            <div class="col">
                <br>
                <div class="form-check">
                    <asp:CheckBox ID="CkbAccion2" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckDefault">
                        Accion
                    </label>
                </div>
                <div class="form-check">
                    <!--numero 4-->
                    <asp:CheckBox ID="CkbAnimacion2" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Animacion
                    </label>
                </div>

                <div class="form-check">
                    <!--numero 5 -->
                    <asp:CheckBox ID="CkbCiencia2" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Ciencia Ficción
                    </label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="CkbComedia2" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Comedia
                    </label>
                </div>
                <div class="form-check">
                    <!-- numero 6 -->
                    <asp:CheckBox ID="CkbDocumental2" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Documental
                    </label>
                </div>
            </div>


            <div class="form-check">
                <asp:CheckBox ID="CkbDrama2" CssClass="form-check-label" runat="server" Checked="true" />
                <label class="form-check-label" for="flexCheckChecked">
                    Drama
                </label>
            </div>

            <div class="form-check">
                <!-- numero 7 -->
                <asp:CheckBox ID="CkbFantasia2" CssClass="form-check-label" runat="server" Checked="true" />
                <label class="form-check-label" for="flexCheckChecked">
                    Fantasía
                </label>
            </div>
            <div class="form-check">
                <!-- numero 8 -->
                <asp:CheckBox ID="CkbSuspenso2" CssClass="form-check-label" runat="server" />
                <label class="form-check-label" for="flexCheckChecked">
                    Suspenso
                </label>
            </div>

            <div class="form-check">
                <!-- numero 9 -->
                <asp:CheckBox ID="CkbTerror2" CssClass="form-check-label" runat="server" />
                <label class="form-check-label" for="flexCheckChecked">
                    Terror
                </label>
            </div>


        </div>

        <!--Segunda COLUMNA-->

        <!--URL-->
        <div class="col-5 m-0">


            <asp:UpdatePanel ID="panelUpload" runat="server">
                <ContentTemplate>

                    <label for="URLImagen" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Link</label>
                    <br>
                    <asp:Label ID="Label4" runat="server" Text="Label" Font-Size="Smaller">(Aqui puedes pegar el link de la foto de la serie que estas agregando)</asp:Label>
                    <br>
                    <asp:TextBox ID="URLImagenSerie" AutoPostBack="true" OnTextChanged="URLImagenSerie_TextChanged" type="text" placeholder="Link" class="form-control" runat="server"></asp:TextBox>

                    <br>
                    <br>
                    <asp:Image ID="URLImgSerie" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>


    </div>


    <!--BOTON ACEPTAR-->
    <div class="row p-4">
        <div class="col-md-6 offset-md-3">
            <asp:Button ID="BtnCargarSERIE" class="btn btn-danger btn-lg p-2 m-2" runat="server" Text="Cargar" Font-Size="X-Large" Height="50px" Width="200" />

        </div>


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <a href="UPLOAD.aspx" class="btn btn-success m-2">VOLVER</a>
            </div>
        </div>


    </div>
</asp:Content>
