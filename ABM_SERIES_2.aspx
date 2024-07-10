<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ABM_SERIES_2.aspx.cs" Inherits="TPCuatrimestral_Grupo3.ABM_SERIES_2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <asp:ScriptManager ID="scm1" runat="server"></asp:ScriptManager>

    <div class="Fondo">
    <h2>ADMINISTRAR SERIES</h2>
</div>

    <div class="container">
           
         <!--FILTROS -->
         
      <div class="row pt-5">

         <div class="Filtros pt-4">

                  <div class="text-center">
                      <asp:Label ID="LblFiltro" Font-Size="X-Large" runat="server" Text="Busqueda simple"></asp:Label>
                      <asp:TextBox ID="Txtfiltro" Width="300px" OnTextChanged="Txtfiltro_TextChanged" AutoPostBack="true" runat="server"></asp:TextBox>
                  </div>

           <div class=" text-start pt-2">
               <asp:Label ID="LblAvanzado" CssClass="m-5" Font-Size="X-Large" runat="server" Text="Busqueda Avanzada"></asp:Label>

                   </div>
                             
                   <div class="row pt-3">
                       <div class="col-3">
                           <div class="mb-3">

                               <asp:Label ID="LblCriterio" runat="server"  Font-Size="Large" Text="Criterio"></asp:Label>

                               <asp:DropDownList ID="DlCriterio" Height="40px" Width="300" AutoPostBack="true" 
                                   OnSelectedIndexChanged="DlCriterio_SelectedIndexChanged"  runat="server">
                                   <asp:ListItem Text="Plataforma" />
                                   <asp:ListItem Text="Pais" />
                                   <asp:ListItem Text="Categoria" />
                                   <asp:ListItem Text="Fandom" />
                               </asp:DropDownList>
                                </div>
                           </div>
       <div class="col-3">
           <div class="mb-3">
                      <asp:Label ID="LbOpc" runat="server" Font-Size="Large" Text="Opciones"></asp:Label>
                       <asp:DropDownList ID="Dlopciones2" Height="40px" Width="300" runat="server">
                                
                        </asp:DropDownList>
                        </div>
                        </div>
                    <div class="col-3">
                        <div class="mb-3">
                            <asp:Label ID="LblEstado" runat="server" Font-Size="Large" Text="Estado"></asp:Label>
                            <asp:DropDownList ID="Dlopciones3" Height="40px" Width="300" runat="server">
                                <asp:ListItem Text="Todos" />
                                <asp:ListItem Text="Activos" />
                                <asp:ListItem Text="Inactivos" />
                     </asp:DropDownList>
                              </div>
                              </div>
                                    
                         <div>
                      <asp:Button ID="BtnBuscar" CssClass="btn btn-primary"  runat="server" Text="Buscar" />
                        </div>
                           </div>
                          </div>
                      </div>
                      
  <asp:UpdatePanel ID="filtro" runat="server">
  <ContentTemplate>             
                <!--GRILLA LISTA -->

            <div class="row pt-5">

                <div class="col-12 ">


               <asp:GridView ID="gvSeries" Width="100%" CssClass="table table-bordered table-hover" 
                   OnSelectedIndexChanged="gvSeries_SelectedIndexChanged" AutoGenerateColumns="false"
                   DataKeyNames="ID" runat="server" CellSpacing="5">
                            <AlternatingRowStyle BackColor="White" />
                            <HeaderStyle BackColor="Yellow" Font-Bold="true" Font-Size="Medium" />
                            <RowStyle BackColor="#f5f5f5" />
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="ID" />
                                <asp:BoundField HeaderText="Titulo" DataField="Titulo" />
                                <asp:BoundField HeaderText="Pais de Origen" DataField="PaisOrigen" />
                                <asp:BoundField HeaderText="Plataforma" DataField="plataforma" />
                                 <asp:BoundField HeaderText="Estado" DataField="Estado" />
                                <asp:BoundField HeaderText="Es Fandom" DataField="fandom" />
                                <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                            </Columns>

                        </asp:GridView>

    </ContentTemplate>
   </asp:UpdatePanel>

              </div>

          


        <!--BOTON VOLVER-->

        <div class="d-flex flex-row-reverse">
            <div class="p-2 m-3">
                <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
            </div>


        </div>

       



</asp:Content>
