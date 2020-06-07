
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
        <div class="jumbotron text-center">
            <h1>Men&uacute; Tratamiento de Im&aacute;genes.</h1>

        </div>
        <form action="operacion" method="post">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <h3>Men&uacute; de Im&aacute;genes en el Servidor.</h3> 
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">A&ntilde;adir</button>
                            <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="JSP/insertar/insertar.jsp">A&ntilde;adir usuario.</a>
<!--                        <a class="dropdown-item" href="#">Link 2</a>-->
                            </div>
                        </div>
  
                        <div class="btn-group">
                            <button type="button" class="btn btn-secondary">Actualizar</button>
                            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="JSP/actualizar/actualizar.jsp">Actualizar usuario - FileUpload.</a>
                                <a class="dropdown-item" href="JSP/actualizar/actualizar.jsp">Actualizar usuario - Part.</a>
                            </div>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-success">Visualizar</button>
                            <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="JSP/visualizar/visualizar.jsp">Visualizar usuario - FileUpload.</a>
                                <a class="dropdown-item" href="JSP/visualizar/visualizar.jsp">Visualizar usuario - Part.</a>
                            </div>
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger">Eliminar</button>
                            <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="JSP/eliminar/eliminar.jsp">Eliminar usuarios.</a>

                            </div>
                        </div>
                        <br><br><br>
                        <div class="btn-group">
                            <button type="button" class="btn btn-warning">Ajax</button>
                            <button type="button" class="btn btn-warning dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="JSP/actualizar/actualizar.jsp">Actualizar avatar por AJAX.</a>

                            </div>
                        </div>
                    </div>
                    <div class="col-xs-3">
                        <h3>Men&uacute; de Im&aacute;genes en en la Base de Datos.</h3> 
                        <div class="btn-group">
                            <button type="button" class="btn btn-primary">A&ntilde;adir</button>
                            <button type="button" class="btn btn-primary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">A&ntilde;adir usuario.</a>
                            </div>
                        </div>
  
                        <div class="btn-group">
                            <button type="button" class="btn btn-secondary">Actualizar</button>
                            <button type="button" class="btn btn-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Actualizar usuario.</a>
                            </div>
                        </div>

                        <div class="btn-group">
                            <button type="button" class="btn btn-success">Visualizar</button>
                            <button type="button" class="btn btn-success dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Visualizar usuario.</a>
                            </div>
                        </div>
                        <div class="btn-group">
                            <button type="button" class="btn btn-danger">Eliminar</button>
                            <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                            </button>
                            <div class="dropdown-menu">
                                <a class="dropdown-item" href="#">Eliminar usuarios.</a>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
