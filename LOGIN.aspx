<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="TPCuatrimestral_Grupo3.LOGIN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <div class="row mb-3 offset-sm-2">
            <label for="inputUsuario" class="col-sm-2 col-form-label">Usuario</label>
            <div class="col-sm-5">
                <input type="text" class="form-control" id="inputEmail3">
            </div>
        </div>
        <div class="row mb-3 offset-sm-2">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Contraseña</label>
            <div class="col-sm-5">
                <input type="password" class="form-control" id="inputPassword3">
            </div>
        </div>

        <br>        
        <div class="row mb-3"> 
            <div class="col-sm-10 offset-sm-4">
                <div class="form-check">
                   <button type="submit" class="btn btn-primary">Ingresar</button>
                </div>
            </div>
        </div>        
    </div>

</asp:Content>
