<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="REGISTROS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.REGISTROS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>REGISTRARME</h2>
    </div>


    <div class="container">

        <div class="row">


            <div class="col-7">

                <br>


                <div>
                    <div class="col-md-4">
                        <label for="Nombre" class="form-label" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Nombre</label>
                        <asp:TextBox ID="TxtNombre" type="text" placeholder="Nombre" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label for="Apellido" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Apellido</label>
                        <asp:TextBox ID="TxtApellido" type="text" placeholder="Apellido" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label for="nacimiento" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Fecha de Nacimiento</label>
                        <asp:TextBox ID="TxtNacimiento" type="text" placeholder="Nacimiento" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label for="genero" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Genero</label>
                        <asp:DropDownList ID="DWLGenero" placeholder="Genero" Width="500"  runat="server" Height="40">
                            <asp:ListItem Text="F"/>
                            <asp:ListItem Text="M" />                          

                        </asp:DropDownList>

                    </div>

                    <div class="col-md-4">
                        <label for="inputEmail4" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Email</label>
                        <asp:TextBox ID="TxtEmail" type="email" placeholder="Email" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>
                    <div class="col-4">
                        <label for="inputAddress" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Dirección</label>
                        <asp:TextBox ID="TxtDireccion" type="text" placeholder="Dirección" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>
                    <div class="col-md-4">
                        <label for="inputState" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">País</label>
                       <asp:DropDownList ID="DLPais" placeholder="País" Width="500" Height="40" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DLPais_SelectedIndexChanged"></asp:DropDownList>
                     </div>

                    <div class="col-md-4">
                        <label for="inputCity" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Ciudad</label>
                        <asp:DropDownList ID="DWLCiudad" placeholder="Ciudad" Width="500" Height="40" runat="server"></asp:DropDownList>
                        
                    </div>

                    <div class="col-md-4">
                        <label for="inputUser" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Nombre de Usuario</label>
                        <asp:TextBox ID="TextUser" type="text" placeholder="Usuario" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>

                    <div class="col-md-4">
                        <label for="inputPassword4" class="form-label pt-4" style="font-weight: bolder; font-size: 20px; font-family: 'Arial Black'">Contraseña</label>
                        <asp:TextBox ID="TxtContrasena" type="password" placeholder="Contraseña" class="form-control" runat="server" Width="500"></asp:TextBox>
                    </div>


                    <br>
                    <div class="col-12">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" id="gridCheck">
                            <label class="form-check-label" for="gridCheck">
                                ¿Estás seguro?
                            </label>
                        </div>
                    </div>

                    <br>
                    <div class="col-12">
                        <asp:Button ID="BtnAgregar" class="btn btn-primary" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" OnClick="BtnAgregar_Click" runat="server" Text="Registrarse" />
                    </div>
                </div>



            </div>


            <div class="col-5 p-5">



                <asp:Image ID="Image1" class="opacity-50 " runat="server" ImageUrl="~/video/agregar-usuario.png" />


            </div>

            <!--BOTON VOLVER-->

            <div class="d-flex flex-row-reverse">
                <div class="m-3">
                    <asp:Button ID="volver" class="btn btn-success m-2" OnClick="volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />

                </div>

            </div>

        </div>


    </div>



</asp:Content>
