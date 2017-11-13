<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Manejador.ManejadorAlumno"%>  
<jsp:useBean id="obj" class="Objeto.Alumno"/>  
<jsp:setProperty property="id" name="obj"/>  
<jsp:setProperty property="nombre" name="obj"/>  
<jsp:setProperty property="carne" name="obj"/>  

<%
    ManejadorAlumno.EliminarAlumno(Integer.parseInt(request.getParameter("id")));
%>  
<c:redirect url="alumno.jsp"/>