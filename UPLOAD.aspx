﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UPLOAD.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UpLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<asp:ScriptManager runat="server" />   
    
        <div class="Fondo">
            <h2>MI RECOMENDACION</h2>
        </div>       

  <div class="container">
        <div class="row">
            <!--PRIMERA COLUMNA-->
            <div class="col-4 m-2">

                <!--TITULO-->
                <div class="md-3">
                    <label for="Titulo" class="form-label pt-2"  style="color: #FFFFCC; font-size: 22px;">Titulo</label>
                    <asp:TextBox ID="TxtTitulo" type="text" placeholder="Titulo" class="form-control" runat="server"></asp:TextBox>
                </div>
                 <!--DESCRIPCION-->
                <div class="md-3">
                     <label for="Descripcion" class="form-label pt-2"  style="color: #FFFFCC;  font-size: 22px;">Descripcion</label>
                    <asp:TextBox ID="TxtDescripcion" type="text" placeholder="Descripcion" class="form-control" runat="server"></asp:TextBox>
                </div>
                <!--pais-->
                <div class="md-3">
                    <label for="Pais" class="form-label pt-2"  style="color: #FFFFCC;  font-size: 22px;">País de Origen</label>
                    <asp:TextBox ID="TxtPais" type="text" placeholder="País" class="form-control" runat="server"></asp:TextBox>
                 </div>
                 <!--URL-->
                <div class="md-3">
                    <label for="URLImagen" class="form-label pt-2"  style="color: #FFFFCC; font-size: 22px;">Link</label>
                    <asp:TextBox ID="URLImagen" type="text" placeholder="Link" class="form-control" runat="server"></asp:TextBox>
                </div>
                <!--PLATAFORMA-->
                <div>
                    <label for="Plataforma" class="form-label pt-3" style="color: #FFFFCC;  font-size: 22px;">Plataforma</label>
                    <asp:DropDownList ID="plataformas" runat="server"></asp:DropDownList>
                <div/>
                <!--CONTENIDO-->
                <div class="md-3">
                    <label for="Tipo" class="form-label pt-2"  style="color: #FFFFCC;  font-size: 22px;">Tipo de Contenido</label>
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
        </div><!--este coloque-->

                <!--CATEGORIA-->

                <div class="row">
                    <label for="Categoria" class="form-label pt-3" style="color: #FFFFCC; font-size: 22px;">Categoria</label>

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
            
             </div>
          

           </div>       

                 <!--Segunda COLUMNA-->
           
                <div class="col-7 col-md-6 p-5  m-5">
                    <asp:UpdatePanel ID="panelUpload" runat="server">
                        <ContentTemplate>  

                            <asp:Image ID="ImURL" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />
                            <asp:GridView ID="GridView1" runat="server"></asp:GridView>


                        </ContentTemplate>
                    </asp:UpdatePanel> 
                                    
                    <!--SEGUNDA COLUMNA-->


                        <!--FECHA DE ESTRENO-->
                            <div>
                                 <label for="Fecha" class="form-label pt-3" style="color: #FFFFCC; font-size: 22px;">Fecha de estreno</label>
                                 <asp:Calendar ID="Fecha" Style="background: white;" runat="server"></asp:Calendar>
                            </div>                         
                          
                  </div>               
                    
        </div>    


<!--</div>-->   


</asp:Content>
