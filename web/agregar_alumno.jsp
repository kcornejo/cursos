<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Alumnos</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    </head>
    <body>
        <h2 align="center">Agregar Alumno</h2>
        <form method="POST" action="funcion_agregar_alumno.jsp">
            <input type="text" name="nombre"/>
            <input type="submit"/>
        </form>
    </body>
</html>
