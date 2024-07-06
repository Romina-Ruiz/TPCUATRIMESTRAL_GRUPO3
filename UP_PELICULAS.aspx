﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UP_PELICULAS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UP_PELICULAS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
                    <asp:DropDownList ID="DWLplataformas" runat="server" Height="35" Width="500">
                    </asp:DropDownList>
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

                    <asp:TextBox ID="TxtResumenPeli" TextMode="MultiLine" type="text" placeholder="Descripcion" class="form-control" runat="server" Height="300"></asp:TextBox>
                </div>
            </div>

            <!--Segunda COLUMNA-->
            <div class="col-5 m-2">
                <!--pais-->

                <div class="md-3">
                    <label for="Pais" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">País de Origen</label>
                    <br>
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Smaller">(Si sabes el país de origen por favor seleccionalo)</asp:Label>
                    <asp:DropDownList ID="DWLPais" runat="server" Height="35" Width="500"></asp:DropDownList>

                </div>

                <!--FECHA DE ESTRENO-->
                <br>
                <br>

                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>

                        <label class="col" style="color: #FFFFCC; font-size: 22px;">Fecha</label>
                        <br>
                        <label style="font-size: 12.8px">(Si sabes su fecha de estreno por favor seleccionalo)</label>

                        <div class="datepicker position-relative border-01 p-4" id="datapicker">
                            <asp:TextBox ID="txtFecha" CssClass="form-control" runat="server"></asp:TextBox>

                            <span class="input-group append">
                                <span class="input-group text bg-white"></span>
                            </span>
                        </div>
                        <script>
                            $(function () {
                                $("#<%= txtFecha.ClientID %>").datepicker();
                            });
                        </script>

                    </ContentTemplate>
                </asp:UpdatePanel>


                <br>

                <label for="Duracion" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Duracion</label>
                <br>
                <label text="Label" style="font-size: 12.8px;">(Si sabes su duración ingresala aqui)</label>
                <br>
                <br>

                <!--nuevo-->
                <asp:DropDownList ID="DwlHora" runat="server" Height="30" Width="100">
                    <asp:ListItem Text="0" />
                    <asp:ListItem Text="1" />
                    <asp:ListItem Text="2" />
                    <asp:ListItem Text="3" />
                    <asp:ListItem Text="4" />
                </asp:DropDownList>


                <asp:DropDownList ID="DwlMinutos" runat="server" Height="30" Width="100">
                    <asp:ListItem Text="0" />
                    <asp:ListItem Text="10" />
                    <asp:ListItem Text="20" />
                    <asp:ListItem Text="30" />
                    <asp:ListItem Text="40" />
                    <asp:ListItem Text="50" />
                    <asp:ListItem Text="60" />
                </asp:DropDownList>
                <!--fin-->


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
                        <asp:CheckBox ID="CkbAccion" CssClass="form-check-label" runat="server" Checked="true" />
                        <label class="form-check-label" for="flexCheckDefault">
                            Accion
                        </label>
                    </div>
                    <div class="form-check">
                        <!--numero 4-->
                        <asp:CheckBox ID="CkbAnimacion" CssClass="form-check-label" runat="server" Checked="true" />
                        <label class="form-check-label" for="flexCheckChecked">
                            Animacion
                        </label>
                    </div>

                    <div class="form-check">
                        <!--numero 5 -->
                        <asp:CheckBox ID="CkbCiencia" CssClass="form-check-label" runat="server" Checked="true" />
                        <label class="form-check-label" for="flexCheckChecked">
                            Ciencia Ficción
                        </label>
                    </div>

                    <div class="form-check">
                        <asp:CheckBox ID="CkbComedia" CssClass="form-check-label" runat="server" Checked="true" />
                        <label class="form-check-label" for="flexCheckChecked">
                            Comedia
                        </label>
                    </div>
                    <div class="form-check">
                        <!-- numero 6 -->
                        <asp:CheckBox ID="CkbDocumental" CssClass="form-check-label" runat="server" Checked="true" />
                        <label class="form-check-label" for="flexCheckChecked">
                            Documental
                        </label>
                    </div>
                </div>


                <div class="form-check">
                    <asp:CheckBox ID="CkbDrama" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Drama
                    </label>
                </div>

                <div class="form-check">
                    <!-- numero 7 -->
                    <asp:CheckBox ID="CkbFantasia" CssClass="form-check-label" runat="server" Checked="true" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Fantasía
                    </label>
                </div>
                <div class="form-check">
                    <!-- numero 8 -->
                    <asp:CheckBox ID="CkbSuspenso" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Suspenso
                    </label>
                </div>

                <div class="form-check">
                    <!-- numero 9 -->
                    <asp:CheckBox ID="CkbTerror" CssClass="form-check-label" runat="server" />
                    <label class="form-check-label" for="flexCheckChecked">
                        Terror
                    </label>
                </div>


            </div>

            <!--Segunda COLUMNA-->
            <div class="col-5 m-0">

                <asp:UpdatePanel ID="panelUpload" runat="server">
                    <ContentTemplate>

                        <!--URL-->
                        <label for="URLImagen" class="form-label pt-2" style="color: #FFFFCC; font-size: 22px;">Link</label>
                        <br>
                        <asp:Label ID="Label4" for="txtpanel" runat="server" Text="Label" Font-Size="Smaller">(Aqui puedes pegar el link de la foto de la pelicula que estas agregando)</asp:Label>
                        <br>
                        <asp:TextBox ID="URLImagen" type="text" placeholder="Link" class="form-control"
                            AutoPostBack="true" OnTextChanged="URLImagen_TextChanged" runat="server"></asp:TextBox>

                        <br>
                        <br>
                        <asp:Image ID="URLImg" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />

                    </ContentTemplate>
                </asp:UpdatePanel>

            </div>


        </div>


        <!--BOTON ACEPTAR-->
        <div class="row">
        <div class="position-absolute start-50">
        <button type="button" id="btnregistro" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#ModalAceptar" style="font-weight: bolder; font-size: 23px">
            Aceptar
        </button>
        </div>
            </div>
        <!-- Modal -->
        <div class="modal fade" id="ModalAceptar" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" style="font-weight: bolder; background-color: #C0C0C0; font-style: normal; color: #000000">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body text-center">
                        <p style="color: #FF0000; font-weight: bolder; font-size: 23px;">¿Estas seguro?</p>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" width="100" data-bs-dismiss="modal" style="font-weight: bolder">Cerrar</button>
                        <asp:Button ID="BtnCargarPeli" class="btn btn-danger" Height="40px" Width="100" Font-Bold="True" OnClick="BtnCargarPeli_Click" runat="server" Text="Cargar"/>
                    </div>
                </div>
            </div>
        </div>


             

        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <a href="UPLOAD.aspx" class="btn btn-success m-2" style="font-weight: bolder; font-size: 15px">VOLVER</a>
            </div>
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
