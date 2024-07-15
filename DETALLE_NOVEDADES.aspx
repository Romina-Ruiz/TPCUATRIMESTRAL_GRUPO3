<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DETALLE_NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DETALLE_NOVEDADES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>NOVEDADES </h2>
    </div>



    <div class="container-fluid ">

        <div class="row">

            <!--COLUMNA izquierda-->


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


            <!--COLUMNA medio-->
            <div class="col-9">


             <div class="card mb-3" style="padding: 13px; margin: 13px; border-color: #990000;">
              <asp:Image ID="ImgCuerpo"  ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png" runat="server" Width="100" Height="300" />
              <div class="card-body" style="background-color: #999999">
              <asp:TextBox ID="TxtTituloCuerpo" runat="server"></asp:TextBox>
              <asp:TextBox ID="TxtCuerpo" runat="server" ReadOnly="True"></asp:TextBox>
              <asp:TextBox ID="TxtFecha" runat="server" ReadOnly="True"></asp:TextBox>
              </div>
              </div>



            </div>



        </div>


    </div>


    <!--SECCION ABAJO-->

    <div class="row pt-5">
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
