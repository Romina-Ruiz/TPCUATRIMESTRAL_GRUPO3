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

            <div  Style="background-color:black" >

                <asp:UpdatePanel ID="UpdatePanel12" class="text-center" runat="server">
                    <ContentTemplate>

                        <div>
                            <asp:Label ID="LblFiltro" Style="font-size:20px" runat="server" Text="Busqueda simple"></asp:Label>
                            <asp:TextBox ID="Txtfiltro" Width="300px" OnTextChanged="Txtfiltro_TextChanged" AutoPostBack="true" runat="server"></asp:TextBox>
                        </div>

                   </ContentTemplate>
                </asp:UpdatePanel>              

             
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
                          <asp:BoundField HeaderText="Plataforma" DataField="PlataformaNombre" />
                          <asp:BoundField HeaderText="Estado" DataField="Estado" />
                          <asp:BoundField HeaderText="Es Fandom" DataField="fandom" />
                          <asp:CommandField ShowSelectButton="true" SelectText="Seleccionar" HeaderText="Accion" />

                      </Columns>

                    </asp:GridView>
          </div>
       </div>

      </ContentTemplate>
  </asp:UpdatePanel>



    <!--BOTON VOLVER-->

    <div class="d-flex flex-row-reverse">
        <div class="p-2 m-3">
            <asp:Button ID="Volver" class="btn btn-success m-2" OnClick="Volver_Click" Font-Size="Larger" Height="40px" Width="150" Font-Bold="True" runat="server" Text="VOLVER" />
        </div>

    </div>
 </div>


</asp:Content>
