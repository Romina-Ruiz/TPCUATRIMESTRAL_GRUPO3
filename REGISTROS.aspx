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
                <asp:TextBox ID="TxtNombre" type="text"  placeholder="nombre" class="form-control" runat="server"></asp:TextBox>
            </div>               
           
            <div class="col-md-4">
                <label for="inputEmail4" class="form-label">Email</label>               
                <asp:TextBox ID="TxtEmail" type="email"  placeholder="email" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label for="inputPassword4" class="form-label">Contraseña</label>                
                <asp:TextBox ID="TxtContrasena" type="password"  placeholder="contraseña" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-4">
                <label for="inputAddress" class="form-label">Dirección</label>     
                <asp:TextBox ID="TxtDireccion" type="text"  placeholder="dirección" class="form-control" runat="server"></asp:TextBox>
            </div>

            <div class="col-md-4">
                <label for="inputCity" class="form-label">Ciudad</label>               
                <asp:TextBox ID="TxtCiudad" type="text"  placeholder="ciudad" class="form-control" runat="server"></asp:TextBox>
            </div>
            <div class="col-md-4">
                <label for="inputState" class="form-label">País</label>                
                <asp:TextBox ID="TxtPais" type="text"  placeholder="país" class="form-control" runat="server"></asp:TextBox>
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
                <asp:Button ID="BtnAgregar" class="btn btn-primary" OnClick="BtnAgregar_Click" runat="server" Text="Registrarse" />
            </div>
        </div>          
            
                       
            
       </div>

     </div>

  </div>

   

</asp:Content>
