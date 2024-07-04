<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UPLOAD.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UpLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container text-center">


        <div class="row justify-content-center">
            <div class="col-2 m-5">
            
                <img src="video/capitulo256.png" alt="imgSeries" />
                
                <asp:Button ID="BntSeries" class="btn btn-danger btn-lg p-2 m-2" runat="server" OnClick="BntSeries_Click" Text="SERIES" />
             
            </div>
            <div class="col-2  m-5">

                <img src="video/carrete-de-pelicula256.png" " alt="imgCarrete" />              
             
                <asp:Button ID="BtnPeliculas" class="btn btn-danger btn-lg p-2 m-2" runat="server" Onclick="BtnPeliculas_Click" Text="PELICULAS" />
                              
            </div>
        </div>
    </div>

     <!--BOTON VOLVER-->

 <div class="d-flex flex-row-reverse">
     <div class="m-3">
         <asp:Button ID="BtnVolver" OnClick="BtnVolver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
     </div>

 </div>

</asp:Content>
