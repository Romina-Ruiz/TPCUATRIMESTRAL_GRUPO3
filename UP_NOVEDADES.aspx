<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UP_NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UP_NOVEDADES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="Fondo">
        <h2>CARGAR NOVEDADES</h2>

    </div>

    <div class="container">

        <div class="row pt-5">

            <div class="col">
                <asp:Label ID="LblTitulo" runat="server" Text="Titulo Principal" Font-Size="X-Large" Font-Bold="True" Width="300" Height="30"></asp:Label>
                <asp:TextBox ID="TxtTitulo" runat="server" Width="500" Height="50" Font-Size="Large" Font-Bold="True" Font-Italic="True"></asp:TextBox>
                <div class="pt-3">
                    <asp:Label ID="LblTitSec" runat="server" Font-Size="X-Large" Font-Bold="True" Width="300" Height="30" Text="Titulo Secundario"></asp:Label>
                    <asp:TextBox ID="TxtTitSec" Width="500" Height="50" Font-Size="Large" Font-Bold="True" Font-Italic="True" runat="server"></asp:TextBox>
                </div>


                <div class="pt-4">
                    <label for="TextDescripcion" class="form-label" style="font-size: 22px; font-weight: bold">Cuerpo del texto</label>
                    <div>
                        <asp:TextBox ID="TxtContenido" runat="server" Height="500px" Width="400px" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col">
                <asp:Label ID="LblImgPortada" runat="server" Text="Imagen de portada" Font-Bold="True" Font-Size="Large"></asp:Label>
                <asp:Label ID="LblImgPort2" runat="server" Text="(Pegue abajo el link de la imagen)"></asp:Label>
                <div>
                <asp:TextBox ID="TxtLinkPort" AutoPostBack="true" OnTextChanged="TxtLinkPort_TextChanged" runat="server" Height="40" Width="500"></asp:TextBox>
                </div>
                <div class="pt-4">
                    <asp:Image ID="ImgPortada" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="300px" Height="250px" runat="server" />
                </div>

                <div class="pt-4">
                <asp:Label ID="LblContenido" runat="server" Font-Bold="True" Font-Size="Large" Text="Imagen Contenido"></asp:Label>
                    <asp:Label ID="LblCont2" runat="server" Text="(Pegue abajo el link de la imagen)"></asp:Label>
                    <div>
                    <asp:TextBox ID="TxtLinkCont" AutoPostBack="true" OnTextChanged="TxtLinkCont_TextChanged"  runat="server" Height="40" Width="500"></asp:TextBox>
                    </div>

                  <div class="pt-4">
                    <asp:Image ID="ImgContenido" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="300px" Height="250px" runat="server" />
                </div>
                 </div>

            </div>

        </div>

        <div class="text-center pt-5">
        <asp:Button ID="BtnAceptar" CssClass="btn btn-danger" Font-Size="Larger" OnClick="BtnAceptar_Click" Height="40px" Width="150" Font-Bold="True" runat="server" Text="Aceptar" />
        </div>
  
     <!--BOTON VOLVER-->

     <div class="d-flex flex-row-reverse">
         <div class="p-2 m-3">
             <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
         </div>
       </div>

 </div>



</asp:Content>
