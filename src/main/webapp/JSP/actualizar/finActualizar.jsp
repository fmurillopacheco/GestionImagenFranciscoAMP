
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
        <title>Actualización aves.</title>
    </head>
    <body>
        <h1>Actualización de Usuarios.</h1>
        <h2>Se ha actualizado el usuario ${usuario.nombre}:</h2>
        <form action="ControladorFinal" method="post" class="form-inline">
            <ul class="list-unstyled">
               <li>Id de usuario: <strong>${usuario.id}</strong></li>
               <li>Nombre: <strong>${usuario.nombre}</strong></li>
               <li>Fecha de nacimiento: <strong>${usuario.fechaNacimiento}</strong></li>
               <li>avatar: <strong>${usuario.avatar}</strong></li>
            </ul>

        </form>
        <button type="submit" value="menu" name="operacion">Menú</button>
    </body>
</html>
