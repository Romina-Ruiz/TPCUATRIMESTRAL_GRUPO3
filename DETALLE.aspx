<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DETALLE.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DETALLE" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="Fondo">
        <h2>DESCRIPCION </h2>
    </div>



    <div class="container">

        <div class="row">




            </div>
         
        <div class="row align-items-center p-5 ">

            <div class="card text-bg-light border-warning mb-3" style="max-width: 540px;">
               

                    <div class="col ">
                        <div class="card-body">
                            <h5 class="card-title"><%#Eval("Titulo") %></h5>
                            <img src="<%#Eval("UrlImagenContenido") %>" class="img-fluid rounded-start" alt="...">
                            <p class="card-text"><small class="text-body-secondary">Fecha y otros datos</small></p>
                        </div>
                    </div>
                </div>
            </div>

        
    </div>

</asp:Content>
