
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
        <link rel="stylesheet" type="text/css" href="CSS/gestionImagenesStyle.css">
        <title>Usuario eliminado.</title>
    </head>
    <body>
        <h1>Usuario eliminado.</h1>
        <p>Pulse en Men&uacute; para acceder al inicio.</p>
        <form action="ControladorFinal" method="post">
            <button type="submit" value="menu" name="operacion">Men&uacute;</button>
        </form>
    </body>
</html>
