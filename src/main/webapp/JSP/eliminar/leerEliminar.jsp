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
        <link rel="stylesheet" type="text/css" href="CSS/gestionImagenesStyle.css">
        <title>Elecci&oacute;n del usuario a eliminar.</title>
    </head>

    <body>
        <h1>Seleccione el usuario a ELIMINAR:</h1>
        
        <form action="<%=request.getContextPath()%>Realizar" method="post">
            <h2>Marque el usuario a actualizar. </h2>
            <c:forEach var="usuario" items="${usuarios}">
                <input type="checkbox" value="${usuario.id}" name="alumnosEliminar"><label id="listadoEliminar">${usuario.nombre}</label>
                <br>
            </c:forEach>
            <br><br>

            <button type="submit" value="cancelar" name="operacion">Cancelar</button>
            <button id="actualizar" type="submit" value="aceptarEliminar" name="operacion">Eliminar</button>
        </form>>
    </body>
</html>
