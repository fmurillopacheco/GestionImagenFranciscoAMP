<%-- 
    Document   : index
    Created on : 02-jun-2020, 20:55:47
    Author     : Framcisco_Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        
        <title>Men&uacute; Gesti&oacute;n de Im&aacute;genes.</title>
    </head>
    <body>
        <form action="operacion" method="post">
            <h1 id="servidor">Men&uacute; Tratamiento de Im&aacute;genes.</h1>
            
            
                <h3 id="servidor"> En el Servidor.</h3>
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col sm-6">
                            <div class="dropdown dropright">
                                <div class="dropdown dropright">
                                    <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">A&ntilde;adir</button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">A&ntilde;adir.</a>
                                    </div>
                                </div>
                            </div>
                            <br>
                            <div class="dropdown dropright">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Actualizar</button>
                                    <div class="dropdown-menu">
                                        <a class="dropdown-item" href="#">commons.FileUpload</a>
                                        <a class="dropdown-item" href="#">Clase Part</a>
                                    </div>
                            </div>
                            <br>
                            <div class="dropdown dropright">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Visualizar</button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">commons.FileUpload</a>
                                    <a class="dropdown-item" href="#">Clase Part</a>
                                </div>
                            </div>
                            <br>
                            <div class="dropdown dropright">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Eliminar</button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">Eliminar.</a>
                                </div>
                            </div>
                        </div>
            <br>
                    <h3 id="servidor"> Im&aacute;genes.</h3>
                        <div class="col sm-6">
                            <div class="dropdown dropright">
                                <button type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown">Visualizar</button>
                                <div class="dropdown-menu">
                                    <a class="dropdown-item" href="#">commons.FileUpload</a>
                                    <a class="dropdown-item" href="#">Clase Part</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            <br>
        </form>
    </body>
</html>
