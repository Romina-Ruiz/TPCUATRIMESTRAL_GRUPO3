<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DETALLE_NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DETALLE_NOVEDADES" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Fondo">
        <h2>NOVEDADES </h2>
    </div>



    <div class="container-fluid ">

        <div class="row pt-5">

          



            <!--COLUMNA medio-->
            <div class="col-9">


                <div class="card mb-3 bg-gradient">
                    <div class="text-center">
                    <asp:Image ID="Image1" class="card-img-top" ImageUrl="https://epichotelsanluis.com/wp-content/uploads/2022/11/placeholder-2.png"  runat="server" Height="500" Width="500" />
                        </div>
                    <div class="card-body">

                        <div class="card-title">
                            <asp:TextBox ID="TxtTitCuerpo" TextMode="MultiLine" CssClass="text-center" runat="server" Font-Size="XX-Large" Font-Bold="True" Font-Italic="True" ForeColor="Maroon" ReadOnly="True" Height="50" Width="1200" BorderStyle="None"></asp:TextBox>
                        </div>
                        <div class="card-text">
                            <asp:TextBox ID="TxtNota" TextMode="MultiLine" runat="server" ReadOnly="True" Height="500" Width="1200" Font-Italic="True" Font-Size="Large" BorderStyle="None" ForeColor="#003366"></asp:TextBox>
                        </div>
                    </div>
                </div>


            </div>

            
            </div>

            <div class="d-flex flex-row-reverse">
                <div class="p-2 m-3">
                    <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
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
