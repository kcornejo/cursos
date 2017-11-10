<%@ page contentType="text/html; charset=UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<jsp:directive.page contentType="text/html; charset=UTF-8" />

<link rel="stylesheet" type="text/css" href="css/screen.css" />
<%
    int pageNumber = 1;
    if (request.getParameter("page") != null) {
        session.setAttribute("page", request.getParameter("page"));
        pageNumber = Integer.parseInt(request.getParameter("page"));
    } else {
        session.setAttribute("page", "1");
    }
    String nextPage = (pageNumber + 1) + "";
    session.setAttribute("EmpList", Manejador.ManejadorAlumno.getData(pageNumber));
    System.out.println(((java.util.List) session.getAttribute("EmpList")).size());
    String myUrl = "contact.jsp?page=" + nextPage;
    System.out.println(myUrl);
    pageContext.setAttribute("myUrl", myUrl);
%>
<h2 align="center">Showing Table Records</h2>
<jsp:useBean id="EmpList" scope="session" type="java.util.List"></jsp:useBean>
    <table>
        <tr>
            <th>Id</th>

        </tr>
        <c:forEach items="${EmpList}" var="emp" begin="0" end="10">
        <tr>
            <td><c:out value="${emp.id}"></c:out>&nbsp;&nbsp;&nbsp;</td>
        </tr>
    </c:forEach>

    <tr>
        <td colspan="2"></td>
        <td colspan="2"><a href="${pageScope.myUrl}">Next Page</a></td>
    </tr>
</table>