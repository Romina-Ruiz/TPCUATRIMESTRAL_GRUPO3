﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_USUARIOS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_USUARIOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>ABM USUARIOS </h2>
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
                                    <label for="inputApellido" class="col-form-label">Apellido</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtApellido" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputNombre" class="col-form-label">Nombre</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtNombre" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputNacimiento" class="col-form-label">Fecha de Nacimiento</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtNacimiento" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputGenero" class="col-form-label">Genero</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtGenero" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputEmail" class="col-form-label">Email</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtEmail" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputUsuario" class="col-form-label">Usuario</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtUsuario" runat="server"></asp:TextBox>
                                </div>

                            </div>
                            <!--2 columna -->

                            <div class="col-5">

                                <div class="col-auto">
                                    <label for="inputDomicilio" class="col-form-label">Domicilio</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtDomicilio" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputCiudad" class="col-form-label">Ciudad</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtCiudad" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputPais" class="col-form-label">Pais</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtPais" runat="server"></asp:TextBox>
                                </div>

                                <div class="col-auto">
                                    <label for="inputAdmin" class="col-form-label">Admin</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TexAdmin" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputVip" class="col-form-label">VIP</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtVip" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-auto">
                                    <label for="inputEstado" class="col-form-label">Estado</label>
                                </div>
                                <div class="col-auto">
                                    <asp:TextBox ID="TxtEstado" runat="server"></asp:TextBox>
                                </div>

                            </div>
                        </div>



                    </div>

                </div>


                <!--BOTONES -->
                <div class="row pt-5 align-items-center">

                    <div class="col-md-10 col-md- offset-1 ">
                        <div class="form-group">

                            <asp:Button ID="Btn_Modificar" CssClass="btn btn-danger btn-lg" Width="220px" runat="server" Text="Modificar" />
                            <asp:Button ID="Btn_Guardar" CssClass="btn btn-info btn-lg" Width="220px" runat="server" Text="Guardar" />


                        </div>

                    </div>
                </div>

                <!--GRILLA FILTROS -->

                <div class="row pt-5">
                    <div>
                       
                        <div class="Fondo">
                           <asp:Label ID="Label1" runat="server" Text="Filtrar" Height="50px" Font-Size="XX-Large"></asp:Label>
                        </div>

                    </div>




                </div>


                <!--GRILLA LISTA -->

                <div class="row">

                    <div class="col-md-10 col-md- offset-1 ">

                        <div class="form-group">

                            <div class="table-responsive">


                                <asp:GridView ID="GDVUsuarios" OnRowDataBound="GDVUsuarios_RowDataBound" Width="100%" OnSelectedIndexChanged="GDVUsuarios_SelectedIndexChanged"
                                    AutoGenerateSelectButton="false" CssClass="table table-bordered table-condensed table-responsive table-hover"
                                    runat="server">
                                </asp:GridView>
                                <alternatinrowstyle backcolor="white" />
                                <headerstyle backcolor="#f8f9fa" font-bold="true" font-size="Larger" forecolor="white" />
                                <rowstyle backcolor="#f5f5f5" />
                                <selectedrowstyle backcolor="#669999" font-bold="true" forecolor="white" />



                            </div>


                        </div>


                    </div>

                </div>


            </ContentTemplate>
        </asp:UpdatePanel>

    </div>




</asp:Content>
