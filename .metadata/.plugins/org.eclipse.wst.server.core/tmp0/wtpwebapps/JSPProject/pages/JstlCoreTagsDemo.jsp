<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSTL Core Tags Demo</title>
</head>
<body>
    <h1>JSTL Core Tags Demo</h1>
    
    <h2>c:if Tag</h2>
    <p>Conditionally renders content based on a condition:</p>
    <c:if test="${2 > 1}">
        <p>2 is greater than 1</p>
    </c:if>

    
    <h2>c:set Tag</h2>
    <p>Sets a value to a variable:</p>
    <c:set var="myVariable" value="Hello, JSTL!"/>
    <p><c:out value="${myVariable}"/></p>
    
    <h2>c:choose, c:when, c:otherwise Tags</h2>
    <p>Implement switch-case-like functionality:</p>
    <c:choose>
        <c:when test="${2 > 1}">
            <p>Case 1: 2 is greater than 1</p>
        </c:when>
        <c:when test="${1 > 2}">
            <p>Case 2: 1 is greater than 2</p>
        </c:when>
        <c:otherwise>
            <p>Default Case: None of the conditions matched</p>
        </c:otherwise>
    </c:choose>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
