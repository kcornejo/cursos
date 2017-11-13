<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Manejador.ManejadorAlumno"%>  
<jsp:useBean id="obj" class="Objeto.Alumno"/>  
<jsp:setProperty property="id" name="obj"/>  
<jsp:setProperty property="nombre" name="obj"/>  
<jsp:setProperty property="carne" name="obj"/>  

<%
    int status = ManejadorAlumno.EditarAlumno(obj);
    if (status == 0) {
        out.println("Ingreso correcto");
    } else {
        out.println("Ingreso incorrecto");
    }
%>  
<c:redirect url="alumno.jsp"/>