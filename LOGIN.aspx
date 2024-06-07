<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="TPCuatrimestral_Grupo3.LOGIN" %>

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
        <h2>LOGIN</h2>
    </div>

    <br>
    <br>
    <div>
        <div class="row mb-3 offset-sm-2">
           <label for="inputUsuario" class="col-sm-2 col-form-label">Usuario</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TxtUsuario" type="text" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="row mb-3 offset-sm-2">
            <label for="inputPassword3" class="col-sm-2 col-form-label">Contraseña</label>
            <div class="col-sm-5">
                <asp:TextBox ID="TxtPass" type="password" CssClass="form-control" runat="server"></asp:TextBox>
            </div>
        </div>

        <br>       

        <div class="row mb-3 offset-sm-4">
            <div class="d-flex justify-content-start">
                <div class="form-check me-5">
                    <asp:Button ID="BtnLogin" style="background: #808080; border: none" CssClass="btn btn-primary" runat="server" OnClick="BtnLogin_Click" Text="Ingresar" />
                </div>
                <div class="form-check">
                   <asp:Button ID="BtCerrar" style="background: #808080; border: none" CssClass="btn btn-primary" runat="server" OnClick="BtnCerrar_Click1"  Text="Cerrar" />
                </div>
            </div>
        </div>

    </div>

</asp:Content>
