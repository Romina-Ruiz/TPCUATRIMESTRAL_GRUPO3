<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DEFAULT.aspx.cs" Inherits="TPCuatrimestral_Grupo3.DEFAULT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>

<body>

    <!--style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }
        .video-background {
            position: fixed;
            right: 0;
            bottom: 0;
            min-width: 100%;
            min-height: 100%;
            width: auto;
            height: auto;
            z-index: -1;
            background-size: cover;
        }
        .content {
            position: relative;
            z-index: 1;
            color: white;
            text-align: center;
            font-size: 2em;
        }
        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Semi-transparente para mejor legibilidad */
            z-index: 0;
        }
    </style-->

    <div class="texto2">
    <a href="HOME.aspx">INGRESAR</a>
    </div>

    
    
   <!--video autoplay="autoplay" class="video-background">
        <source src="video/explocion.mp4" type="video/mp4"/>
        Tu navegador no soporta el elemento de video.
    </video>-->
    
    
    <!--<video src="video/explocion.mp4" autoplay="autoplay" controls="controls" />-->

    <!--<form id="form1" runat="server">

        <div class="contenedorBienvenido">
            <div class="texto">
                <h2>BIENVENIDOS</h2>
            </div>
        </div>

        <div class="ingresar">

            <div class="texto2">

                <a href="HOME.aspx">INGRESAR</a>
            </div>

        </div>
    </form>-->
    
        <div class="overlay"></div>
            <video autoplay="autoplay" class="video-background" controls="controls" >
                <source src="video/explocion.mp4" type="video/mp4"/>
                Tu navegador no soporta el elemento de video.
            </video>
        <div class="content">
             <h2>BIENVENIDOS</h2>
            <p>Este es un ejemplo de un video de fondo.</p>
        </div>
    </body>

</html>
