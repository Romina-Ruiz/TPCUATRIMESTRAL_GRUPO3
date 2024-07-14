<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.CINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>NOVEDADES</h2>
    </div>

    <div class="row pt-5">

        <!--menú izquierda-->

        <div class="col align-self-center text-center text-white">

            <asp:Label ID="LblFiltro" Font-Bold="true" Font-Size="X-Large" runat="server" Text="BUSCA POR NOMBRE:"></asp:Label>
            <br>
            <br>
            <asp:TextBox ID="TxtFiltroS" Width="300px" Height="40px" runat="server"></asp:TextBox>

            <br>
            <br>
        </div>

    </div>


    <!-- 2 Fotos casa del dragon/los vigilantes -->

    <div class="row align-self-center p-5">
         <div class="col ">
            
                <asp:Repeater ID="RepNews" runat="server">
                <ItemTemplate>        

               
                    <div class="card text-bg-dark">
                        <img src="<%#Eval("ImgPortada") %>" class="card-img" alt="...">
                        <div class="card-img-overlay">
                            <h5 class="card-title"><%#Eval("TituloPortada") %></h5>
                            
                            <div class="position-absolute bottom-0 end-0">
                            <asp:Button ID="BtnVer" CssClass="btn btn-primary" Font-Size="Medium" BorderColor="Black" BorderWidth="2" Font-Bold="True" CommandArgument='<%# Eval("IdNews") %>' OnClick="BtnVer_Click" runat="server" Text="VER" />
                            </div>
                        </div>
                    </div>
                
        
        </ItemTemplate>   
        </asp:Repeater>

      </div>
    </div>




    <!--SECCION ABAJO-->

    <div class="row">
        <div class="col-4 p-0.5">
            <img src="https://assets.tvnotas.com.mx/dims4/default/16271fb/2147483647/strip/true/crop/2880x1620+0+0/resize/1440x810!/quality/90/?url=https%3A%2F%2Fk3-prod-tvnotas.s3.us-west-2.amazonaws.com%2Fbrightspot%2F4d%2F91%2F4cf7bd8944158d1e796b5530461d%2Fdescarga-3.jpg" alt="imagen1" height="250" width="450" />
        </div>

        <div class="col-4">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9iD1s2Ww_vNRahZ8IVHWG5h8JnNBN4pOXqQ&s" alt="imagen2" height="250" width="450" />
        </div>
        <div class="col-4">
            <img src="https://media.primicias.ec/2024/02/08114547/marvels.jpg" alt="imagen3" height="250" width="450" />
        </div>
    </div>



</asp:Content>
