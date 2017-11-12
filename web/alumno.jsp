<html>
    <head>
        <title>Listado de Alumnos</title>
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
    </head>
    <body>
        <%@ page contentType="text/html; charset=UTF-8"%>
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <jsp:directive.page contentType="text/html; charset=UTF-8" />

        <%
            session.setAttribute("EmpList", Manejador.ManejadorAlumno.getData());
        %>
        <h2 align="center">Alumno</h2>
        <jsp:useBean id="EmpList" scope="session" type="java.util.List"></jsp:useBean>
            <table class="table table-striped table-bordered">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Carné</th>
                </tr>
                <c:forEach items="${EmpList}" var="emp" begin="0" end="10">
                <tr>
                    <td><c:out value="${emp.id}"></c:out></td>
                <td><c:out value="${emp.nombre}"></c:out></td>
                <td><c:out value="${emp.carne}"></c:out></td>
                </tr>
            </c:forEach>
        </table>
        <a class="btn btn-success" href="agregar_alumno.jsp">
            Agregar Alumno
        </a>
    </body>
</html>
