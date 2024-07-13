<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MODIFICAR_USER.aspx.cs" Inherits="TPCuatrimestral_Grupo3.MODIFICAR_USER" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>MODIFICAR USUARIO</h2>
    </div>


    <div class="container">

        <div class="row m-5">

            <!-- primera  columna-->

            <div class="col">

                <asp:Label ID="LblNombre" runat="server" Text="Nombre" Height="40px" Font-Bold="True" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TxtNombre" class="ms-2 pt-4" runat="server" Width="500"></asp:TextBox>

                <asp:Label ID="LblApelldo" runat="server" Text="Apellido" Font-Bold="True" Height="40px" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TxtApellido" class="ms-2 pt-5" runat="server" Width="500" Height="40px"></asp:TextBox>

                <asp:Label ID="LblNac" runat="server" Text="Fecha de Nacimiento" Font-Bold="True" Height="40px" Font-Size="Large"></asp:Label>
                <div>
                    <asp:TextBox ID="TxtNac" class="ms-2 pt-5" runat="server" TextMode="DateTime" Height="40px" Width="500"></asp:TextBox>
                </div>

                <asp:Label ID="LblGenero" runat="server" Text="Genero" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                <div>
                    <asp:DropDownList ID="DwlGenero" class="ms-2 pt-5" Height="40px" Width="500" runat="server"></asp:DropDownList>
                </div>

                <div>
                <asp:Label ID="LblEmail" runat="server" Text="Email" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <div> 
                <asp:TextBox ID="TxtEmail" class="ms-2 pt-5" runat="server" Width="500" Height="40px"></asp:TextBox>
                </div>
                <div>
                <asp:Label ID="LblDom" runat="server" Text="Domicilio" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <asp:TextBox ID="TxtDom" class="ms-2 pt-5" runat="server" Width="500" Height="40px"></asp:TextBox>
                <div>
                <asp:Label ID="LblCity" runat="server" Text="Ciudad" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <div>
                <asp:DropDownList ID="DwlCity" class="ms-2 pt-5" runat="server" Width="500" Height="40px"></asp:DropDownList>
                </div>

                <asp:Label ID="LblUser" runat="server" Text="Nombre de Usuario" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txtUser" class="ms-2 pt-5" runat="server" Width="500" Height="40px"></asp:TextBox>

            </div>
            <!--COLUMNA DERECHA-->

            <div class="col pt-5">
                <img src="video/user.png" class="opacity-50 rounded float-end" alt="Alternate Text" height="350" width="350" />
            </div>

        </div>

        <div class="row pt-5">

            <div class="col-md-10  offset-1 ">
                <div class="form-group">
                    <asp:Button ID="BtnModificar" class="m-2" CssClass="btn btn-warning btn-lg" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Modificar" />
                    <asp:Button ID="BtnActivar" class="m-2" CssClass="btn btn-info btn-lg" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Activar" />
                    <asp:Button ID="BtnEliminar" class="m-2" CssClass="btn btn-danger btn-lg" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Eliminar" />
                </div>
            </div>


        </div>


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="m-3">
                <asp:Button ID="BtnVolver" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>



    </div>

</asp:Content>
