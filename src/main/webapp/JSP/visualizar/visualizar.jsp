<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <%@include file="/INC/metas.inc"%>
        <link rel="stylesheet" type="text/css" href="CSS/avesStyle.css">
        <title>Listado de Usuarios.</title>
    </head>
    <body>
        <h1>Listado de Usuarios: </h1>
        <table class="table">
            <thead class="thead-light">
                <tr>
                    <th>IdUsuario</th>
                    <th>Nombre</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Avatar</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="usuarios" items="${usuario}">
                <tr>
                    <td>${usuarios.id}</td>
                    <td>${usuarios.nombre}</td>
                    <td>${usuarios.fechaNacimiento}</td>
                    <td>${usuarios.avatar}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        
        
        <c:url var="index" value="index.jsp"/>
    </body>
</html>
