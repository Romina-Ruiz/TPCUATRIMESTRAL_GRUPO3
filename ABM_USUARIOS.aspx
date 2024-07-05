<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_USUARIOS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_USUARIOS" %>

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

                                <asp:GridView ID="GdvUsuarios" CssClass="table-responsive" AutoGenerateColumns="false" runat="server"></asp:GridView>
                                <columns>

                                    <asp:boundfield headertext="Apellido" datafield="Apellidos" />
                                    <asp:boundfield headertext="Nombre" datafield="Nombres"/>
                                     <asp:boundfield headertext="Nacimiento" datafield="Nacimiento"/>
                                     <asp:boundfield headertext="Genero" datafield="Genero"/>
                                     <asp:boundfield headertext="Email" datafield="Email"/>
                                     <asp:boundfield headertext="Domicilio" datafield="Domicilio"/>
                                     <asp:boundfield headertext="Pais" datafield="Pais"/>
                                     <asp:boundfield headertext="Ciudad" datafield="Ciudad"/>
                                     <asp:boundfield headertext="Administrador" datafield="Administrador"/>
                                     <asp:boundfield headertext="Vip" datafield="Vip"/>
                                     <asp:boundfield headertext="Estado" datafield="Estado"/>

                                </columns>


                            </div>


                        </div>


                    </div>

                </div>


            </ContentTemplate>
        </asp:UpdatePanel>

    </div>


            <!--BOTON VOLVER-->

<div class="d-flex flex-row-reverse">
    <div class="p-2 m-3">
         <asp:Button ID="Volver" OnClick="Volver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150"  Font-Bold="True" runat="server" Text="VOLVER" />
    </div>

</div>



</asp:Content>
