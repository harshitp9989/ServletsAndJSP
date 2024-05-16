<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Iteration Example</title>
</head>
<body>
    <h1>JSP Iteration Example</h1>
    
    <h2>Using JSP Scriptlet for Looping</h2>
    <p>Using scriptlet to create a loop:</p>
    <ul>
        <%
            for (int i = 1; i <= 5; i++) {
        %>
        <li>Item <%= i %></li>
        <%
            }
        %>
    </ul>
    
    <h2>Using JSTL Core Tags for Looping</h2>
    <p>Using JSTL core tags to create a loop:</p>
    <ul>
        <c:forEach var="item" begin="1" end="5">
            <li>Item <c:out value="${item}"/></li>
        </c:forEach>
    </ul>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
