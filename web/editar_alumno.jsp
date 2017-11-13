<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="Manejador.ManejadorAlumno"%>  
        <jsp:useBean id="obj" class="Objeto.Alumno"/>
        <%
            obj = ManejadorAlumno.getAlumnoPorId(Integer.parseInt(request.getParameter("id")));
        %>
        <h1>
            Editar alumno <%out.println(obj.getNombre());%>
        </h1>
        <form method="POST" action="funcion_editar_alumno.jsp">
            <input type="hidden" name="id" value="<%out.print(obj.getId());%>"/>
            <input type="text" name="nombre" value="<%out.print(obj.getNombre());%>"/>
            <input type="text" name="carne" value="<%out.print(obj.getCarne());%>"/>
            <input type="submit"/>
        </form>
    </body>
</html>
