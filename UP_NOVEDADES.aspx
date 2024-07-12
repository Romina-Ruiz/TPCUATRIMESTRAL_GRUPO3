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
                <asp:Label ID="LblTitulo" runat="server" Text="Titulo" Font-Size="X-Large" Font-Bold="True" Width="300" Height="30"></asp:Label>
                <asp:TextBox ID="TxtTitulo" runat="server" Width="500" Height="50" Font-Size="Large" Font-Bold="True" Font-Italic="True"></asp:TextBox>

                <div class="pt-4">
                    <label for="TextDescripcion" class="form-label" style="font-size: 22px; font-weight: bold">Cuerpo del texto</label>
                    <div>
                        <asp:TextBox ID="TxtContenido" runat="server" Height="500px" Width="400px" Font-Size="Medium" Font-Bold="True"></asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="col">
                <asp:Label ID="LblImg" runat="server" Text="Imagen de portada" Font-Bold="True" Font-Size="Large"></asp:Label>
                <div>
                    <asp:Image ID="ImgPortada" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="300px" Height="300px" runat="server" />
                </div>

                <div class="pt-2">
                <asp:Label ID="LblContenido" runat="server" Font-Bold="True" Font-Size="Large" Text="Imagen Contenido"></asp:Label>
                <div>
                    <asp:Image ID="ImgContenido" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" Width="300px" Height="300px" runat="server" />
                </div>
                 </div>

            </div>

        </div>

             
  
     <!--BOTON VOLVER-->

     <div class="d-flex flex-row-reverse">
         <div class="p-2 m-3">
             <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
         </div>
       </div>

 </div>



</asp:Content>
