<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_USUARIOS.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_USUARIOS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>ABM USUARIOS </h2>
    </div>

    <div class="container">


        <!--GRILLA FILTROS -->

        <div class="row pt-5">
            <div>

                <div class="Filtros2">
                    <asp:Label ID="Label1" runat="server" Text="Filtrar" Height="50px" Font-Size="XX-Large"></asp:Label>
                </div>

            </div>

        </div>


        <!--GRILLA LISTA -->

        <div class="row pt-5">

                    <div class="table-responsive">

                        <asp:GridView ID="GdvUsuarios" Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="ID" 
                            OnSelectedIndexChanged="GdvUsuarios_SelectedIndexChanged" AllowPaging="true" 
                            PageSize="10" AutoGenerateColumns="false" runat="server">
                         <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                        <RowStyle BackColor="#f5f5f5" />
                            <columns>

                            <asp:boundfield headertext="Apellido" datafield="Apellido" />
                            <asp:boundfield headertext="Nombre" datafield="Nombres" />
                            <asp:boundfield headertext="Genero" datafield="Genero" />
                            <asp:boundfield headertext="Pais" datafield="Pais" />
                            <asp:boundfield headertext="Administrador" datafield="EsAdministrador" />
                            <asp:boundfield headertext="Vip" datafield="EsVip" />
                            <asp:boundfield headertext="Estado" datafield="Estado" />
                            <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                        </columns>

                        </asp:GridView>
                    
                    </div>

        </div>


    </div>


    <!--BOTON VOLVER-->

    <div class="d-flex flex-row-reverse">
        <div class="p-2 m-3">
            <asp:Button ID="Volver" OnClick="Volver_Click" class="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
        </div>

    </div>



</asp:Content>
