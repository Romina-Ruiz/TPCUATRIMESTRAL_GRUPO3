<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="TPCuatrimestral_Grupo3.HOME" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
     
    
 <div class="row row-cols-1 row-cols-md-3 g-4">
  <div class="col">
    <div class="card h-100">
     <iframe width="430" height="380"
          src="https://www.youtube.com/embed/tlWuLVNGQ9U?autoplay=1&mute=1&loop=1&playlist=tlWuLVNGQ9U&controls=0"
          title="YouTube video player" frameborder="0" allow="accelerometer; 
          autoplay; clipboard-write; encrypted-media; gyroscope; 
          picture-in-picture; web-share"
          referrerpolicy="strict-origin-when-cross-origin"
          allowfullscreen></iframe>

      <div class="card-body">        
      </div>
    
    </div>
  </div>
  <div class="col">
    <div class="card h-100">
    <iframe width="430" height="380"
        src="https://www.youtube.com/embed/v0d0id78XdE?autoplay=1&mute=1&loop=1&playlist=v0d0id78XdE&controls=0"
        title="YouTube video player" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media;
        gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
      <div class="card-body">    
      </div>
    </div>
  </div>
  
   <div class="col">
    <div class="card h-100">
      <iframe width="430" height="380"
        src="https://www.youtube.com/embed/ksYCxT8rDi8?autoplay=1&mute=1&loop=1&playlist=ksYCxT8rDi8&controls=0"
        title="YouTube video player" frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>

      <div class="card-body">       
        
      </div>
    </div>
  
   <!--</div>
  <div class="col">
    <div class="card h-100">
      <img src="..." class="card-img-top" alt="...">
      <div class="card-body">
        <h5 class="card-title">Card title</h5>
        <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
      </div>
    </div>
  </div>-->
</div>

<div id="carouselExample" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://www.saintgregory.cr/wp-content/uploads/2023/06/1609408585_467254_1609408795_noticia_normal.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://www.lavanguardia.com/files/image_948_465/files/fp/uploads/2023/02/07/63e26dd00be55.r_d.589-392.jpeg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://i.blogs.es/4755f7/accion/1366_2000.jpeg" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

<div id="carouselExample2" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://s1.elespanol.com/2017/01/27/actualidad/actualidad_189245206_129755622_1706x960.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://depor.com/resizer/O6v0c8-2xVK59F5X9IXMgUrAayE=/580x330/smart/filters:format(jpeg):quality(90)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/TBIA7VARAZAPVMQ3UKVV3ZZHGA.jpg" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1aH8fWE4-VB6XdWYGW339AU-wuh1I3axvcA&usqp=CAU" class="d-block w-100" alt="...">
      
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample2" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample2" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


<div id="carouselExample3" class="carousel slide">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRqQ5jTPc5fABN_4JwCZcZHWRVOPsJAA8fGNQ&usqp=CAU" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRihAbi-1Uw9RdSUK16gRCP55_HoVIugv1QUA&usqp=CAU" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPSwXEI9UAMU9Ee38WvajFmq914QbU5JQIqA&usqp=CAU" class="d-block w-100" alt="...">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample3" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample3" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

</div>
<script>
  
    function autoSlide() {
        $('#carouselExample').carousel('next');    
        
    }    
    setInterval(autoSlide, 5000); 

    function autoSlide2() {       
        $('#carouselExample2').carousel('next');        
    }
    setInterval(autoSlide2, 4000); 

    function autoSlide3() {
        $('#carouselExample3').carousel('next');
    }
    setInterval(autoSlide3, 6000); 


</script>



</asp:Content>
