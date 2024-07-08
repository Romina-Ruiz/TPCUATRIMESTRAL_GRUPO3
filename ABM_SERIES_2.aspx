﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_SERIES_2.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_SERIES_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
    <h2>ADMINISTRAR SERIES</h2>
</div>


    <div class="container">


        <asp:ScriptManager ID="scm1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>   


                <!--FORMULARIO -->
                <div class="row pt-2">

                    <div class="col-6 ">

                        <div class="col-5">

                            <div class="col-auto">
                                <label for="inputTitulo" class="col-form-label" style="font-weight: bold; font-size: x-large">Titulo</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TxtTitulo" runat="server" Width="300"></asp:TextBox>
                            </div>

                            <div class="col-auto">
                                <label for="inputPais" class="col-form-label" style="font-weight: bold; font-size: x-large">Pais de Origen</label>
                            </div>
                            <div class="col-auto">

                                <asp:DropDownList ID="Ddlpais" runat="server" Width="300" Height="34"></asp:DropDownList>
                            </div>

                            <div class="col-auto">
                                <label for="inputLanzamiento" class="col-form-label" style="font-weight: bold; font-size: x-large">Fecha de Lanzamiento</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TxtLanzamiento" Width="300" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-auto">
                                <label for="inputDescripcion" class="col-form-label" style="font-weight: bold; font-size: x-large">Descripcion</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TxtDescripcion" Width="300" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-auto">
                                <label for="inputDuracion" class="col-form-label" style="font-weight: bold; font-size: x-large">Duracion (minutos)</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TxtDuracion" Width="300" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-auto">
                                <label for="inputPlataforma" class="col-form-label" style="font-weight: bold; font-size: x-large">Plataforma</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TxtPlataforma" Width="300" runat="server"></asp:TextBox>
                            </div>

                            <div class="col-auto">
                                <label for="inputfandom" class="col-form-label" style="font-weight: bold; font-size: x-large">Es Fandon</label>
                            </div>
                            <div class="col-auto">
                                <asp:TextBox ID="TexFandom" Width="300" runat="server"></asp:TextBox>
                            </div>

                        </div>

                    </div>
                    <!--2 columna -->
                    <div class="col-6 ">

                        <div class="col-5">

                            <div class="col-auto">
                                <label for="inputCategoria" class="col-form-label" style="font-weight: bold; font-size: x-large">Categoria</label>
                            </div>
                            <!--CHECK BOX-->
                            <div class="col-auto">

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


                        <div class="col-auto">
                            <label for="inputImagen" class="col-form-label" style="font-weight: bold; font-size: x-large">URLImagen</label>
                        </div>
                        <div class="col-auto">
                            <asp:TextBox ID="TxtImagen" AutoPostBack="true" Width="300" OnTextChanged="TxtImagen_TextChanged" runat="server"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                        <asp:Image ID="URLImg" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="40%" runat="server" />


                    </div>


                </div>

                </div>


                <!--BOTONES -->
                <div class="row pt-5 align-items-center">

                    <div class="col-md-10 col-md- offset-1 ">
                        <div class="form-group">

                            <asp:Button ID="Btn_Modificar" class="m-2" CssClass="btn btn-warning btn-lg" OnClick="Btn_Modificar_Click" Width="220px" runat="server" Text="Modificar" />
                            <asp:Button ID="Btn_Activar" class="m-2" OnClick="Btn_Activar_Click" CssClass="btn btn-info btn-lg" Width="220px" runat="server" Text="Activar" />
                            <asp:Button ID="Btn_Eliminar" class="m-2" CssClass="btn btn-danger btn-lg" OnClick="Btn_Eliminar_Click" Width="220px" runat="server" Text="Eliminar" />

                        </div>

                    </div>
                </div>

                        <!--FILTROS -->

                
                <asp:UpdatePanel ID="filtro" runat="server">
                    <ContentTemplate>

                        <div class="row pt-5">

                            <div class="Filtros pt-4">

                                <div class="text-center">
                                    <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Buscar"></asp:Label>
                                    <asp:TextBox ID="Txtfiltro" Width="300px" AutoPostBack="true" OnTextChanged="Txtfiltro_TextChanged" runat="server"></asp:TextBox>
                                </div>

                                <div class="pt-2">
                                    <asp:Label ID="LblAvanzado" CssClass="m-5" Font-Size="X-Large" runat="server" Text="Busqueda Avanzada"></asp:Label>

                                    <asp:CheckBox ID="CkbAvanzado" CssClass="$form-check-min-height:"
                                        AutoPostBack="true" OnCheckedChanged="CkbAvanzado_CheckedChanged" runat="server" />

                                </div>
                                <% if (FiltroAvanzadoSerie)
                                    { %>
                                <div class="row pt-3">
                                    <div class="col-3">
                                        <div class="mb-3">

                                            <asp:Label ID="LblCriterio" runat="server" Font-Size="Large" Text="Criterio"></asp:Label>

                                            <asp:DropDownList ID="DlCriterio" Height="40px" Width="300" AutoPostBack="true" OnSelectedIndexChanged="DlCriterio_SelectedIndexChanged" runat="server">
                                                <asp:ListItem Text="Plataforma" />
                                                <asp:ListItem Text="Pais" />
                                                <asp:ListItem Text="Categoria" />
                                                <asp:ListItem Text="Fandom" />
                                            </asp:DropDownList>
                                             </div>
                                        </div>
                                    <div class="col-3">
                                        <div class="mb-3">
                                            <asp:Label ID="LbOpc" runat="server" Font-Size="Large" Text="Opciones"></asp:Label>
                                            <asp:DropDownList ID="Dlopciones2" Height="40px" Width="300" runat="server">
                                                
                                            </asp:DropDownList>
                                        </div>
                                        </div>
                                    <div class="col-3">
                                        <div class="mb-3">
                                            <asp:Label ID="LblEstado" runat="server" Font-Size="Large" Text="Estado"></asp:Label>
                                            <asp:DropDownList ID="Dlopciones3" Height="40px" Width="300" runat="server">
                                                <asp:ListItem Text="Todos" />
                                                <asp:ListItem Text="Activos" />
                                                <asp:ListItem Text="Inactivos" />
                                            </asp:DropDownList>
                                       </div>
                                     </div>
                                    
                                    <div>
                                        <asp:Button ID="BtnBuscar" CssClass="btn btn-primary" OnClick="BtnBuscar_Click" runat="server" Text="Buscar" />
                                    </div>
                                   

                                </div>


                            </div>
                        </div>
                        <% } %>
                        </ContentTemplate>
                    </asp:UpdatePanel>

                <!--GRILLA LISTA -->

                <div class="row pt-5">

                    <div class="col-12 ">


                        <asp:GridView ID="gvSeries" Width="100%" CssClass="table table-bordered table-hover" AutoGenerateColumns="false"
                            DataKeyNames="ID" OnSelectedIndexChanged="gvSeries_SelectedIndexChanged"
                            runat="server" CellSpacing="5">

                            <AlternatingRowStyle BackColor="White" />
                            <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                            <RowStyle BackColor="#f5f5f5" />


                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="ID" />
                                <asp:BoundField HeaderText="Titulo" DataField="Titulo" />
                                <asp:BoundField HeaderText="Pais de Origen" DataField="PaisOrigen" />
                                <asp:BoundField HeaderText="Fecha de lanzamiento" DataField="FechaLanzamiento" />
                                <asp:BoundField HeaderText="Duracion" DataField="Duracion" />
                                <asp:BoundField HeaderText="Plataforma" DataField="Plataforma" />
                                <asp:BoundField HeaderText="Es Fandom" DataField="fandom" />
                                <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                            </Columns>

                        </asp:GridView>



                    </div>

                </div>



        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <asp:Button ID="Volver" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>


        </div>

        </ContentTemplate>
        </asp:UpdatePanel>

    </div>










</asp:Content>