<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UPLOAD.aspx.cs" Inherits="TPCuatrimestral_Grupo3.UpLoad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container text-center">


        <div class="row justify-content-center">
            <div class="col-2 m-5">

                <asp:Image ID="Image1" runat="server" ImageUrl="~/video/capitulo256.png" />
                <button type="button" class="btn btn-danger btn-lg p-2 m-2">
                    SERIES
                </button>

            </div>
            <div class="col-2  m-5">

                <asp:Image ID="Image2" runat="server" ImageUrl="~/video/carrete-de-pelicula256.png" />

                <button type="button" class="btn btn-danger btn-lg p-2 m-2">
                    PELICULAS
                </button>
            </div>
        </div>
    </div>

</asp:Content>
