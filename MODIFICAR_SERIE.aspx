<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MODIFICAR_SERIE.aspx.cs" Inherits="TPCuatrimestral_Grupo3.MODIFICAR_SERIE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

    <asp:ScriptManager runat="server" />


    <div class="Fondo">
        <h2>MODIFICAR CONTENIDO</h2>
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
                        <div class="position-relative border-01 p-4" id="datapicker">
                            <asp:TextBox ID="TxtFechaSerie" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>

                            <asp:RequiredFieldValidator ID="Validacion2" runat="server"
                                ControlToValidate="txtFechaSerie"
                                Display="Dynamic"
                                ErrorMessage="La fecha es obligatoria"
                                CssClass="text-danger">
                            </asp:RequiredFieldValidator>

                            <span class="input-group append">
                                <span class="input-group text bg-white"></span>
                            </span>
                        </div>


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
                    <asp:DropDownList ID="DWLTemporadas2" runat="server" Height="30" Width="150">
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
                        <asp:ListItem Text="10" />
                        <asp:ListItem Text="11" />
                        <asp:ListItem Text="12" />
                        <asp:ListItem Text="13" />
                        <asp:ListItem Text="14" />
                        <asp:ListItem Text="15" />
                        <asp:ListItem Text="16" />
                        <asp:ListItem Text="17" />
                    </asp:DropDownList>
                    <label for="Temporadas" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Temporadas</label>

                </div>

                <div class="p-5">
                    <asp:Label ID="Label6" runat="server" Text="Label" Font-Size="Medium">Si sabes los capítulos que tiene ingresa aquí</asp:Label>
                    <br>
                    <asp:DropDownList ID="DWLCapitulos2" runat="server" Height="30" Width="150">
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
                        <asp:ListItem Text="10" />
                        <asp:ListItem Text="11" />
                        <asp:ListItem Text="12" />
                        <asp:ListItem Text="13" />
                        <asp:ListItem Text="14" />
                        <asp:ListItem Text="15" />
                        <asp:ListItem Text="16" />
                        <asp:ListItem Text="17" />
                        <asp:ListItem Text="18" />

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
                    <asp:CheckBox ID="CkbAccion2" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckDefault">
                        Accion
                    </label>
                </div>
                <div class="form-check">
                    <!--numero 4-->
                    <asp:CheckBox ID="CkbAnimacion2" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Animacion
                    </label>
                </div>

                <div class="form-check">
                    <!--numero 5 -->
                    <asp:CheckBox ID="CkbCiencia2" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Ciencia Ficción
                    </label>
                </div>

                <div class="form-check">
                    <asp:CheckBox ID="CkbComedia2" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Comedia
                    </label>
                </div>
                <div class="form-check">
                    <!-- numero 6 -->
                    <asp:CheckBox ID="CkbDocumental2" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Documental
                    </label>
                </div>
            </div>


            <div class="form-check">
                <asp:CheckBox ID="CkbDrama2" CssClass="form-check-label" runat="server" />
                <label class="form-check-label" for="flexCheckChecked">
                    Drama
                </label>
            </div>

            <div class="form-check">
                <!-- numero 7 -->
                <asp:CheckBox ID="CkbFantasia2" CssClass="form-check-label" runat="server" />
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
                    <asp:TextBox ID="URLImagenSerie" type="text" placeholder="Link" AutoPostBack="true" OnTextChanged="URLImagenSerie_TextChanged" class="form-control" runat="server"></asp:TextBox>

                    <br>
                    <br>
                    <asp:Image ID="URLImgSerie" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />
                    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

                </ContentTemplate>
            </asp:UpdatePanel>

        </div>

    </div>

    <!--BOTONES -->
    <div class="row pt-5">

        <div class="col-md-10 col-md- offset-1 ">
            <div class="form-group">
                <asp:Button ID="Btn_Modificar" OnClick="Btn_Modificar_Click" CssClass="btn btn-warning btn-lg" Width="220px" runat="server" Text="Modificar" />
                <asp:Button ID="Btn_Activar" class="m-2"  CssClass="btn btn-info btn-lg" Width="220px" runat="server" Text="Activar" />
                <asp:Button ID="Btn_Eliminar" class="m-2"  CssClass="btn btn-danger btn-lg" Width="220px" runat="server" Text="Eliminar" />
            </div>
        </div>

    </div>



    <div class="col-md-6 offset-md-3">
    </div>


    <!--BOTON VOLVER-->

    <div class="d-flex flex-row-reverse">
        <div class="p-2 m-3">
            <a href="ABM_SERIES_2.aspx" class="btn btn-success m-2">VOLVER</a>
        </div>
    </div>



    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var checkboxes = document.querySelectorAll('input[type="checkbox"]');

            var alMenosUnoMarcado = Array.prototype.slice.call(checkboxes).some(function (checkbox) {
                return checkbox.checked;
            });
            if (!alMenosUnoMarcado) {
                checkboxes[0].checked = true;
            }
        });
    </script>







</asp:Content>
