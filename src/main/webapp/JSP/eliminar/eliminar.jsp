<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
        <title>Confirmar eliminar registro.</title>
    </head>

    <body>
        <h1>¿Estás seguro que deseas ELIMINAR este usuario?</h1>
        
        <form action="<%=request.getContextPath()%>/Concluir" method="post">
        <h3>El Usuario a eliminar es: </h3>
            <ul class="list-unstyled">
               <li>Id de usuario: <strong>${usuario.id}</strong></li>
               <li>Nombre: <strong>${usuario.nombre}</strong></li>
               <li>Fecha de nacimiento: <strong>${usuario.fechaNacimiento}</strong></li>
               <li>Avatar: <strong>${usuario.avatar}</strong></li>
            </ul>
            <br>
            <button type="submit" value="cancelar" name="operacion">Cancelar</button>
            <button id="eliminar" type="submit" value="Eliminar" name="operacion">Eliminar</button>
        </form>
    </body>
</html>
