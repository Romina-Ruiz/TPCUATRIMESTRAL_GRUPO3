<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_PELIS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_PELIS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>ADMINISTRAR PELICULAS</h2>
    </div>

    <div class="container">


        <asp:ScriptManager ID="scm1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>


                <!--FORMULARIO -->
                <div class="row pt-5">

                    <div class="col-md-10 col-md- offset-1 ">



                        <div class="row g-3 align-items-center">

                            <div class="col-5">

                                <div class="col-auto">
                                    <label for="inputTitulo" class="col-form-label">Titulo</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtTitulo" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputPais" class="col-form-label">Pais de Origen</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtPais" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputLanzamiento" class="col-form-label">Fecha de Lanzamiento</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtLanzamiento" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputDescripcion" class="col-form-label">Descripcion</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtDescripcion" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputDuracion" class="col-form-label">Duracion</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtDuracion" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputPlataforma" class="col-form-label">Plataforma</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtPlataforma" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <!--2 columna -->

                            <div class="col-5">

                                <div class="col-auto">
                                    <label for="inputCategoria" class="col-form-label">Categoria</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtCategoria" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputfandom" class="col-form-label">Es Fandon</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TexFandom" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputImagen" class="col-form-label">URLImagen</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtImagen" runat="server"></asp:TextBox>
                                </div>
                                <asp:Image ID="Imagen" runat="server" />


                            </div>
                        </div>



                    </div>

                </div>


                <!--BOTONES -->
                <div class="row pt-5 align-items-center">

                    <div class="col-md-10 col-md- offset-1 ">
                        <div class="form-group">

                            <asp:Button ID="Btn_Modificar" class="m-2" CssClass="btn btn-warning btn-lg" Width="220px" runat="server" Text="Modificar" />
                            <asp:Button ID="Btn_clean" class="m-2" CssClass="btn btn-info btn-lg" Width="220px" runat="server" Text="Limpiar" />
                            <asp:Button ID="Btn_Eliminar" class="m-2" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" Text="Eliminar" />

                        </div>

                    </div>
                </div>

                <!--GRILLA FILTROS -->

                <div class="row pt-5">
                    <div>

                        <div class="Filtros">
                            <asp:Label ID="Label1" runat="server" Text="Filtrar" Height="50px" Font-Size="XX-Large"></asp:Label>
                        </div>

                    </div>




                </div>


                <!--GRILLA LISTA -->

                <div class="row pt-5">

                    <div class="col-12 ">


                        <asp:GridView ID="gvPelis" Width="100%" CssClass="table table-bordered table-hover" AutoGenerateColumns="false"
                            AutoGenerateSelectButton="true" OnSelectedIndexChanging="gvPelis_SelectedIndexChanging"
                            runat="server" CellSpacing="5">

                            <AlternatingRowStyle BackColor="White" />
                            <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />

                            <RowStyle BackColor="#f5f5f5" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="true" ForeColor="#990000" />

                            <Columns>

                                <asp:BoundField HeaderText="Titulo" DataField="Titulo" />
                                <asp:BoundField HeaderText="Pais de Origen" DataField="PaisOrigen" />
                                <asp:BoundField HeaderText="Fecha de lanzamiento" DataField="FechaLanzamiento" />
                                <asp:BoundField HeaderText="Duracion" DataField="Duracion" />
                                <asp:BoundField HeaderText="Plataforma" DataField="Plataforma" />
                                <asp:BoundField HeaderText="Es Fandom" DataField="fandom" />

                            </Columns>




                        </asp:GridView>









                    </div>

                </div>


            </ContentTemplate>
        </asp:UpdatePanel>


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <asp:Button ID="Volver" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>


        </div>



    </div>




</asp:Content>
