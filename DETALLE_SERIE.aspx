<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DETALLE_SERIE.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DETALLE_SERIE" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Fondo">
     <h2>DETALLE DE LA SERIE </h2>
 </div>


 <div class="Fondo">
     <h3>PONER ALGO </h3>
 </div>

 <div class="container ">

     <div class="row p-2">

         <!--COLUMNA izquierda-->


         <div class="col bg-secondary text-white">

             <h5>Poner los filros aca  </h5>
             <br>
         </div>

         <!--COLUMNA medio-->
         <div class="col-9">

             <div class="card mb-3" style="max-width: 1000px;">
                 <div class="row g-0">

                     <!--IMAGEN de la card-->
                     <div class="col-md-4">
                         <img src="video/sillon.png" class="img-fluid rounded-start" alt="...">
                     </div>

                     <!--texto de la card-->
                     <div class="col-md-8">

                         <div class="card-header text-center " style="font-family: 'Century Gothic'; font-size: 29px; font-weight: bolder; color: #800000; text-decoration: underline;">
                             TITULO SERIE
                         </div>
                         <ul class="list-group list-group-flush">
                             <!--PLATAFORMA-->
                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Plataforma:
                             <asp:Label ID="Label1" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small"> ACA TRAER LA INFO</asp:Label>
                             </li>
                             <!--PAIS-->
                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">País de origen: 
                             <asp:Label ID="Label2" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small">ACA TRAER LA INFO</asp:Label>
                             </li>

                             <!--FEHA DE ESTRENO-->
                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Fecha de estreno: 
                             <asp:Label ID="Label3" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small">ACA TRAER LA INFO</asp:Label>
                             </li>

                             <!--TEMPORADAS-->
                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Temporadas: 
                             <asp:Label ID="Label4" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small">ACA TRAER LA INFO</asp:Label>
                             </li>
                             <!--CAPITULOSS-->
                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Capitulos: 
                             <asp:Label ID="Label7" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small">ACA TRAER LA INFO</asp:Label>
                             </li>

                             <!--CATEGORIAS-->

                             <li class="list-group-item text-start" style="font-size: medium; font-weight: bolder; font-family: 'Franklin Gothic Medium'">Categorias: 
                             <asp:Label ID="Label5" runat="server" CssClass="text-start text-danger" Text="Label" Font-Size="Small">ACA TRAER LA INFO</asp:Label>
                             </li>

                         </ul>
                         <!--POCHOCLOS-->

                         <div class="text-start pt-1">

                             <asp:Image ID="Image1" runat="server" ImageUrl="~/video/icono3.png" />
                         </div>


                     </div>

                 </div>
             </div>

             <!--SINOPSIS-->
             <div class="card p-0">
                 <div class="card-body text-start">
                     <h3 style="font-family: 'Century Gothic'; font-size: 29px; font-weight: bolder; color: #800000; text-decoration: underline;">SINOPSIS</h3>
                     <asp:Label ID="Label6" runat="server" Text="Label"> ACA VA TODA LA DESCRIPCION QUE REALIZARON</asp:Label>
                 </div>
             </div>


         </div>

         <!--COLUMNA derecha-->
         <div class="col">
         </div>


     </div>

     <!--FIN DE LA PRIMERA ROW-->


 </div>








</asp:Content>
