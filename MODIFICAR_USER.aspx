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
                <asp:TextBox ID="TxtNombre"  runat="server" Width="500" Height="30px" Font-Size="Medium"  ReadOnly="True"></asp:TextBox>

                <asp:Label ID="LblApelldo" runat="server" Text="Apellido" Font-Bold="True" Height="40px" Font-Size="Larger"></asp:Label>
                <asp:TextBox ID="TxtApellido" runat="server" Width="500" Height="30px" ReadOnly="true"></asp:TextBox>

                <asp:Label ID="LblNac" runat="server" Text="Fecha de Nacimiento" Font-Bold="True" Height="40px" Font-Size="Large"></asp:Label>
                <div>
                    <asp:TextBox ID="TxtNac" runat="server" TextMode="DateTime" Height="30px" Width="500" ReadOnly="true"></asp:TextBox>
                </div>

                <asp:Label ID="LblGenero" runat="server" Text="Genero" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                <div>
                    <asp:TextBox ID="TxtGenero" Height="30px" Width="500" ReadOnly="true"  runat="server"></asp:TextBox>
                   </div>

                <div>
                <asp:Label ID="LblEmail" runat="server" Text="Email" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <div> 
                <asp:TextBox ID="TxtEmail" runat="server" Width="500" Height="30px" ReadOnly="true"></asp:TextBox>
                </div>
                <div>
                <asp:Label ID="LblDom" runat="server" Text="Domicilio" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <asp:TextBox ID="TxtDom" runat="server" Width="500" Height="30px" ReadOnly="true"></asp:TextBox>
                <div>
                <asp:Label ID="LblCity" runat="server" Text="Ciudad" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                </div>
                <div>
                <asp:TextBox ID="TxtCity" Width="500" Height="30px" ReadOnly="true" runat="server"></asp:TextBox>
                </div>
               
                <asp:Label ID="LblUser" runat="server" Text="Nombre de Usuario" Height="40px" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:TextBox ID="txtUser" runat="server" Width="500" Height="30px" ReadOnly="true"></asp:TextBox>

            </div>

            <!--COLUMNA DERECHA-->

            <div class="col pt-5">
                <img src="video/user.png" class="opacity-50 rounded float-end" alt="Alternate Text" height="350" width="350" />
            </div>

        </div>

        <div class="row pt-5">

            <div class="col-md-10  offset-1 ">
                <div class="form-group">
                    
                    <asp:Button ID="BtnActivar" class="m-2" CssClass="btn btn-info btn-lg" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Activar" OnClick="BtnActivar_Click" />
                    <asp:Button ID="BtnEliminar" class="m-2" CssClass="btn btn-danger btn-lg" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Eliminar" OnClick="BtnEliminar_Click" />
                </div>
            </div>


        </div>


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="m-3">
                <asp:Button ID="BtnVolver" OnClick="BtnVolver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>



    </div>

</asp:Content>
