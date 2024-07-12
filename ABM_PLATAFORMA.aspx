<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_PLATAFORMA.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_PLATAFORMA" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="Stylo/Titulos.css" rel="stylesheet" />

    <div class="Fondo">
        <h2>ADMINISTRAR PLATAFORMAS</h2>
    </div>


    <div class="container">

        <div class="pt-5">

        <div class="row Filtros">

            <div class="text-center pt-3">
               
                <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Busqueda simple"></asp:Label>
                <asp:TextBox ID="Txtfiltro" Width="300px" AutoPostBack="true" OnTextChanged="Txtfiltro_TextChanged" runat="server"></asp:TextBox>
            </div>
            
            <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
            <asp:Button ID="BtnAgregar" CssClass="btn btn-danger btn-lg" OnClick="BtnAgregar_Click" Height="40px" Width="150" Font-Bold="True" runat="server" Text="AGREGAR" />
          </div>
          </div>
       
            </div>
        </div>

        <div class="row pt-3">

            <asp:GridView ID="GvPlataforma" Width="100%" CssClass="table table-bordered table-hover" OnSelectedIndexChanged="GvPlataforma_SelectedIndexChanged" AutoGenerateColumns="false"
                DataKeyNames="ID" runat="server">
                <AlternatingRowStyle BackColor="White" />
                <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                <RowStyle BackColor="#f5f5f5" />

                <Columns>
                    <asp:BoundField HeaderText="ID" DataField="ID" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Web" DataField="UrlSitioWeb" />
                    <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                    </Columns>       


            </asp:GridView>




        </div>



    </div>

    
    <!--BOTON VOLVER-->

     <div class="d-flex flex-row-reverse">
     <div class="p-2 m-3">
         <asp:Button ID="Volver" OnClick="Volver_Click" CssClass="btn btn-success m-2" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
     </div>

 </div>






</asp:Content>
