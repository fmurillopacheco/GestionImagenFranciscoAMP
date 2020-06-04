<%-- 
    Document   : finInsertar
    Created on : 16-may-2020, 20:23:59
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
         <link rel="stylesheet" type="text/css" href="CSS/usuariosStyle.css">
        <title>Insertar nuevo usuario.</title>
    </head>
    <body>
        <h1>Se ha creado un nuevo usuario.</h1>
        <form action="ControladorFinal" method="post" class="form-inline">
            <ul>
               <li>Id de usuario: <strong><%=request.getParameter("id")%></strong></li>
               <li>Nombre: <strong><%=request.getParameter("npmbre")%></strong></li>
               <li>Fecha de nacimiento: <strong><%=request.getParameter("fecha")%></strong></li>
               <li>avatar: <strong><%=request.getParameter("avatar")%></strong></li>
            </ul>

        </form>
                        <button type="submit" value="menu" name="operacion">Menú</button>
    </body>
</html>
