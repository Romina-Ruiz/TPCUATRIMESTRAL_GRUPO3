<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_PLATAFORMA.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_PLATAFORMA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
        <h2>ADMINISTRAR PELICULAS</h2>
    </div>


    <div class="container">

        <div class="row pt-3 Filtros">

            <div class="text-center pt-3">
                <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Busqueda simple"></asp:Label>
                <asp:TextBox ID="Txtfiltro" Width="300px" AutoPostBack="true" OnTextChanged="Txtfiltro_TextChanged" runat="server"></asp:TextBox>
            </div>

        </div>


        <div class="row pt-3">

            <asp:GridView ID="GvPlataforma" Width="100%" CssClass="table table-bordered table-hover" AutoGenerateColumns="false"
                DataKeyNames="ID" runat="server">
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                <RowStyle BackColor="#f5f5f5" />

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Web" DataField="UrlSitioWeb" />
                    <asp:BoundField HeaderText="Logo" DataField="UrlLogo" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                    </Columns>       


            </asp:GridView>




        </div>



    </div>








</asp:Content>
