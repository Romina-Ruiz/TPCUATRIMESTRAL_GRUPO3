﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_NOVEDADES.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_NOVEDADES" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <link href="Stylo/Titulos.css" rel="stylesheet" />

   <div class="Fondo">
       <h2>ADMINISTRAR NOVEDADES</h2>
   </div>


   <div class="container">

       <div class="pt-5">
           <div class="row">

       <div class="Filtros2">

           <div class="text-center pt-3">
              
               <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Busqueda simple"></asp:Label>
               <asp:TextBox ID="Txtfiltro" Width="300px" AutoPostBack="true" OnTextChanged="Txtfiltro_TextChanged" runat="server"></asp:TextBox>
           </div>
           
           <div class="pt-5">   
               <asp:Label ID="LblEstados"  runat="server" Text="Estados: " Font-Size="Medium" Font-Bold="True"></asp:Label>
               <asp:DropDownList ID="DwlEstados" Width="300px" OnSelectedIndexChanged="DwlEstados_SelectedIndexChanged" AutoPostBack="true" 
                 runat="server">
                     <asp:ListItem Text="Todos" />
                     <asp:ListItem Text="Activos" />
                     <asp:ListItem Text="Inactivos" />
               </asp:DropDownList>

           </div>


           <div class="d-flex flex-row-reverse">
           <div class="p-2 m-3">
           <asp:Button ID="BtnAgregar" CssClass="btn btn-danger btn-lg" OnClick="BtnAgregar_Click" Height="40px" Width="150" Font-Bold="True" runat="server" Text="AGREGAR" />
         </div>
         </div>
      
           </div>
       </div>
      </div>
     
       <div class="row pt-3">

           <asp:GridView ID="GdvNovedades" Width="100%" CssClass="table table-bordered table-hover" OnSelectedIndexChanged="GdvNovedades_SelectedIndexChanged" AutoGenerateColumns="false"
               DataKeyNames="IdNews" runat="server">
               <AlternatingRowStyle BackColor="White" />
               <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
               <RowStyle BackColor="#f5f5f5" />

               <Columns>
                   <asp:BoundField HeaderText="ID" DataField="IdNews" />
                   <asp:BoundField HeaderText="Titulo" DataField="TituloPortada" />
                   <asp:BoundField HeaderText="Fecha" DataField="FechaSubido" />
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
