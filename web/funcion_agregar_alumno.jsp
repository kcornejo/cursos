<%@page import="Manejador.ManejadorAlumno"%>  
<jsp:useBean id="obj" class="Objeto.Alumno"/>  

<jsp:setProperty property="nombre" name="obj"/>  

<%
    int status = ManejadorAlumno.AgregarAlumno();
//    if(status == 0){
//        out.println("Ingreso correcto");
//    }else{
//        out.println("Ingreso incorrecto");
//    }
%>  