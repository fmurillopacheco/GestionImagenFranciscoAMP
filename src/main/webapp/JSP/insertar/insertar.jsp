<%-- 
    Document   : inicioInsertar
    Created on : 16-may-2020, 20:23:41
    Author     : Francisco_Antonio
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
        <%@include file="/INC/metas.inc"%>
        <link rel="stylesheet" type="text/css" href="CSS/avesStyle.css">
        <title>Crear Usuario.</title>
    </head>
    <body>

         <form action="Realizar" method="post" class="needs-validation" novalidate>
            <div class="container">
            <h1>Crear usaurio.</h1>
                <div class="row align-items-center">
                    <div class="col sm-4">
                        <div class="form-group">
                            <label for="id">IdUsuario: </label>
                        </div>
                        <div class="form-group">
                            <label for="nombreUsu">Usuario:</label>
                            <input type="text" class="form-control" placeholder="Enter username" name="nombreUsu" required>
                            <div class="valid-feedback">OK.</div>
                            <div class="invalid-feedback">Por favor, rellena este campo.</div>
                        </div>
                        <div class="form-group">
                            <label for="fecha">Fecha de nacimiento:</label>
                            <input type="date" class="form-control" placeholder="Fecha de nacimiento" name="fecha" required>
                            <div class="valid-feedback">OK.</div>
                            <div class="invalid-feedback">Por favor, rellena este campo.</div>
                        </div>
                        <div class="form-group">
                            <input type="file" class="form-control-file border" name="avatar">
                        </div>
                        <button type="submit" value="cancelar" name="operacion">Cancelar</button>
                        <button id="insertar" type="submit" value="insertarUsuario" name="operacion">Crear usaurio</button> 

                    </div>    
                </div>
            </div>
        </form>

    </body>
</html>
