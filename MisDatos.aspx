<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="MisDatos.aspx.cs" Inherits="TPCuatrimestral_Grupo3.MisDatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">

        <h2>MIS DATOS</h2>

    </div>


    <div class="row m-5">

        <!-- primera  columna-->

        <div class="col-4 p-0.5">



            <asp:Label ID="LabelNombre" class="ms-2 pt-4" runat="server" Text="Nombre" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TxtNombre" runat="server" Width="500"></asp:TextBox>

            <asp:Label ID="LabelApelldo" class="ms-2 pt-5" runat="server" Text="Apellido" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextApellido" runat="server" Width="500"></asp:TextBox>

            <asp:Label ID="Label1" class="ms-2 pt-5" runat="server" Text="Fecha de Nacimiento" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox1" runat="server" Width="500"></asp:TextBox>
            <asp:Label ID="Label2" class="ms-2 pt-5" runat="server" Text="Genero" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox2" runat="server" Width="500"></asp:TextBox>
            <asp:Label ID="Label3" class="ms-2 pt-5" runat="server" Text="Email" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox3" runat="server" Width="500"></asp:TextBox>
            <asp:Label ID="Label4" class="ms-2 pt-5" runat="server" Text="Domicilio" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox4" runat="server" Width="500"></asp:TextBox>
            <asp:Label ID="Label5" class="ms-2 pt-5" runat="server" Text="Ciudad" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox5" runat="server" Width="500"></asp:TextBox>
            <asp:Label ID="Label6" class="ms-2 pt-5" runat="server" Text="Nombre de Usuario" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox6" runat="server" Width="500"></asp:TextBox>

            <asp:Label ID="Label7" class="ms-2 pt-5" runat="server" Text="Contraseña" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox7" runat="server" Width="500"></asp:TextBox>

             <asp:Label ID="Label8" class="ms-2 pt-5" runat="server" Text="NUEVA Contraseña" Font-Bold="True" Font-Size="Medium"></asp:Label>

            <asp:TextBox ID="TextBox8" runat="server" Width="500"></asp:TextBox>

             <!--BOTON MODIFICAR-->
            <br />

            <div class="pt-5 ms-5"> 
             <asp:Button ID="Button1" class="btn btn-danger" Font-Size="Larger" Height="40px" Width="150"  Font-Bold="True" runat="server" Text="MODIFICAR" />
             </div>

        </div>


        <!--COLUMNA DERECHA-->

        <div class="col-5 p-5">
            <img src="video/user.png" class="opacity-50 rounded float-end" alt="Alternate Text" height="350" width="350" />
        </div>

        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="m-3">
                <asp:Button ID="BtnVolver" OnClick="BtnVolver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>

        </div>

    </div>


</asp:Content>
