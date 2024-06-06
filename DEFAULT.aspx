<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEFAULT.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DEFAULT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Video</title>
</head>


<body>

    <div id="carouselExample" class="carousel slide">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <video class="d-block w-100">
                    <source src="video/explocion.mp4" type="video/mp4" />
                    Tu navegador no soporta el elemento de video.
                    <a href="HOME.aspx" id="click" role="button">INGRESAR</a>
                </video>
            </div>
        </div>
    </div>  
   
    <script> 

        function clickBoton() {
            setTimeout(function () {
                document.getElementById('click').click();
            }, 12000);
        }
        clickBoton();       
       
        document.addEventListener('DOMContentLoaded', (event) => {
            var video = document.querySelector('#carouselExample .carousel-item.active video');
            if (video) {
                video.muted = true; // Silencie el video para permitir la reproducción automática
                video.play().catch(error => {
                    console.error("Error al reproducir el video automáticamente:", error);
                });
            }
        });

    </script>
</body>

</html>
