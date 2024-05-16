<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.excelr.jspdemo.Person" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Actions Demo</title>
</head>
<body>
    <h1>JSP Actions Demo</h1>
    
    <h2>jsp:include</h2>
    <p>Purpose: Includes the content of another resource (JSP, HTML, or servlet) within the current JSP page during the translation phase.</p>
    <p>Syntax: <jsp:include page="included.jsp"/></p>
    
    <h2>jsp:forward</h2>
    <p>Purpose: Forwards the current request to another resource (JSP, HTML, or servlet) on the server.</p>
 
    <h3 style="    color: red;">Uncomment code in Eclipse to see the fun !!!</h3>
<%--     <p>Syntax: <jsp:forward page="MyFirstJspPage.jsp"/></p>--%>    
 
    <h2>jsp:useBean</h2>
    <p>Purpose: Locates or instantiates a JavaBean and makes it available for use within the JSP page.</p>
    <p>Syntax: <jsp:useBean id="person2" class="com.excelr.jspdemo.Person" scope="page"/></p>
    
   <%-- Assume that you have a 'person' JavaBean with 'firstName' and 'lastName' properties --%>
    <%
        Person person = new Person();
        person.setFirstName("Captain");
        person.setLastName("Marvel");
        pageContext.setAttribute("person", person);
    %>
    <p>Full Name: ${person.firstName} ${person.lastName}</p>

    <a href="../index.jsp">Back to Home</a>
</body>
</html>
