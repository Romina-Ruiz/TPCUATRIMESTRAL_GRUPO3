<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.CINE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<asp:ScriptManager ID="scm1" runat="server"></asp:ScriptManager>

    <div class="Fondo">
        <h2>NOVEDADES</h2>
    </div>

    <div class="row pt-5">

        <!--menú izquierda-->

        <div class="col align-self-center text-center text-white">

            <asp:Label ID="LblFiltro" Font-Bold="true" Font-Size="X-Large" runat="server" Text="BUSCA POR NOMBRE:"></asp:Label>
            <br>
            <br>
            <asp:TextBox ID="TxtFiltroS" Width="300px" AutoPostBack="true" OnTextChanged="TxtFiltroS_TextChanged" Height="40px" runat="server"></asp:TextBox>

            <br>
            <br>
        </div>

    </div>

    <div class="row">

        <!--PRIMERA COLUMNA -->

        <div class="col-3">

            <div class="col-4 pt-2">
                <img src="https://www.mundodeportivo.com/alfabeta/hero/2023/12/amazon-prime.1703875576.0139.jpg?width=1200" height="250" width="450" />
            </div>
            <div class="col-4 pt-2">
                <img src="https://media.primicias.ec/2024/02/08114547/marvels.jpg" alt="imagen3" height="250" width="450" />
            </div>

            <div class="col-4 pt-2">
                <img src="https://cnbl-cdn.bamgrid.com/assets/be8feab8abc4cb62b92e0472a58fdbe0045058b16247299a349998ceb318188e/original" alt="imagen3" height="250" width="450" />
            </div>
            <div class="col-4 p-2">
                <img src="https://cnbl-cdn.bamgrid.com/assets/9a3fc9f7f6bc33220820f32f3b2997f16203d7f317bb5f2caf27722ead28f26f/original" alt="imagen3" height="250" width="450" />
            </div>


        </div>
 
        <!-- SEGUNDA COLUMNA -->

        <div class="col-5 m-5 pt-5">

            <asp:Repeater ID="RepNews" runat="server">
                <ItemTemplate>
                    <br>


                    <div class="card mb-3" style="padding: 13px; margin: 13px; border-color: #990000;">
                        <img src="<%#Eval("ImgPortada") %>" class="card-img-top" alt="...">
                        <div class="card-body" style="background-color: #999999">
                            <p class="card-text" style="font-family: fantasy; font-size: 26px; font-weight: bolder; color: #000000; background-color: #999999; font-style: italic;"><%#Eval("TituloPortada") %></p>
                            <p class="card-text"><small class="text-body-secondary"><%#Eval("FechaSubido") %></small></p>
                            <div class="position-absolute bottom-0 end-0">
                                <asp:Button ID="BtnVer" CssClass="btn btn-primary" Font-Size="Medium" BorderColor="Black" BorderWidth="2" Font-Bold="True" CommandArgument='<%# Eval("IdNews") %>' OnClick="BtnVer_Click" runat="server" Text="VER" />
                            </div>
                        </div>
                    </div>




                    <br>
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
