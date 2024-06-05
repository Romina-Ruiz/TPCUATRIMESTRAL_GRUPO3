<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ESTRENOS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ESTRENOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <style>
        .Fondo {
            background-color: darkred;
            color: antiquewhite;
            padding: 5px;
            text-align: center;
        }
    </style>


    <div class="Fondo">


        <h2>ESTRENOS</h2>


    </div>

    <!--CUERPO -->

    <div class="container">
        <div class="row">
            
            <!--COLUMNA 1-->
            
            <div class="col-9">

                <h1> PONE ALGO   </h1>

            </div>
           
             <!--COLUMNA 2-->
            <div class="col-4">
                
                <h2> ACA VAN LOS FILTRO   </h2>
                <br>
                
                            
            </div>
           
            <!--COLUMNA ESTRENOS -->
           
           
            <div class="col-6">
                
                
                <br>
               
            <div class="card text-bg-light border-warning mb-3" style="max-width: 540px;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <img src="..." class="img-fluid rounded-start" alt="...">
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <p class="card-text"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>
            </div>

            
            
            </div>
        </div>
    </div>






</asp:Content>
