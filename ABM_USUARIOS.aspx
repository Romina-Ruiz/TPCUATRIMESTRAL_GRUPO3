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
              
                
            <div class="text-center pt-3">
               
                <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Busqueda simple"></asp:Label>
                <asp:TextBox ID="Txtfiltro" Width="300px" AutoPostBack="true" OnTextChanged="Txtfiltro_TextChanged" runat="server"></asp:TextBox>
            </div>
            
            <div class="pt-5">   
                <asp:Label ID="LblEstados" runat="server" Text="Estados: " Font-Size="Medium" Font-Bold="True"></asp:Label>
                <asp:DropDownList ID="DwlEstados" OnSelectedIndexChanged="DwlEstados_SelectedIndexChanged" Width="300px" AutoPostBack="true" 
                  runat="server">
                      <asp:ListItem Text="Todos" />
                      <asp:ListItem Text="Activos" />
                      <asp:ListItem Text="Inactivos" />
                </asp:DropDownList>

            </div>
                    

                
                </div>

            </div>

        </div>


        <!--GRILLA LISTA -->

        <div class="row pt-5">

                    <div class="table-responsive">

                        <asp:GridView ID="GdvUsuarios" Width="100%" CssClass="table table-bordered table-hover" DataKeyNames="Id" 
                            OnSelectedIndexChanged="GdvUsuarios_SelectedIndexChanged" AllowPaging="true" 
                            PageSize="10" AutoGenerateColumns="false" runat="server">
                         <AlternatingRowStyle BackColor="White" />
                        <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                        <RowStyle BackColor="#f5f5f5" />
                            <columns>

                            <asp:boundfield headertext="ID" datafield="Id" />
                            <asp:boundfield headertext="Apellido" datafield="Apellido" />
                            <asp:boundfield headertext="Nombre" datafield="Nombres" />
                            <asp:boundfield headertext="Pais" datafield="Pais" />
                            <asp:boundfield headertext="Administrador" datafield="EsAdministrador" />
                         
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
