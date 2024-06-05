<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="REGISTROS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.REGISTROS" %>

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


        <h2>MI CUENTA</h2>


    </div>

    <div class="container">


        <div class="row">
            
            <div class="col-2">
                <br>
                </div>
            <div class="col-12"> 
                
                <br>
                
                  
            
             <div>
            <div class="col-md-4">
                <label for="Nombre" class="form-label">Nombre</label>
                <input type="text" class="form-control" placeholder="nombre" aria-label="First name">
            </div>

            <div class="col-md-4">
                <label for="Apellido" class="form-label">Apellido</label>
                <input type="text" class="form-control" placeholder="apellido" aria-label="Last name">
            </div>


            <div class="col-md-4">
                <label for="inputEmail4" class="form-label">Email</label>
                <input type="email" class="form-control" id="inputEmail4">
            </div>
            <div class="col-md-4">
                <label for="inputPassword4" class="form-label">Contraseña</label>
                <input type="password" class="form-control" id="inputPassword4">
            </div>
            <div class="col-4">
                <label for="inputAddress" class="form-label">Dirección</label>
                <input type="text" class="form-control" id="inputAddress" placeholder="1234 Main St">
            </div>

            <div class="col-md-4">
                <label for="inputCity" class="form-label">Ciudad</label>
                <input type="text" class="form-control" id="inputCity">
            </div>
            <div class="col-md-4">
                <label for="inputState" class="form-label">País</label>
                <select id="inputState" class="form-select">
                    <option selected>elegir...</option>
                    <option>...</option>
                </select>
            </div>

            <br>
            <div class="col-12">
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" id="gridCheck">
                    <label class="form-check-label" for="gridCheck">
                        ¿Estás seguro?
                    </label>
                </div>
            </div>

            <br>
            <div class="col-12">
                <button type="submit" class="btn btn-primary">Registrarse</button>
            </div>
        </div>
            
            
            
            
            
            </div>
            </div>



        </div>

   

</asp:Content>
