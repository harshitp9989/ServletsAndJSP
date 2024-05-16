<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Directives Demo</title>
</head>
<body>
    <h1>JSP Directives Demo</h1>
    <p>JSP directives provide instructions to the JSP container on how to handle the JSP page during translation and execution.</p>
    
    <h2>Common Directives:</h2>
    <ol>
        <li><b>@ page</b>: Specifies page-level settings like error handling and content type.</li>
        <li><b>@ include</b>: Includes a file in the JSP page during translation.</li>
        <li><b>@ taglib</b>: Declares custom tag libraries for use in the page.</li>
    </ol>
    
    <p>To use the <b>@ page</b> directive, set attributes like:</p>
    
    <%--
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    --%>
    
    <p>To include another file, use <b>@ include</b> directive:</p>
    
    <%--
    <%@ include file="included.jsp" %>
    --%>
    
    <p>To declare a custom tag library, use <b>@ taglib</b> directive:</p>
    
    <%--
    <%@ taglib prefix="my" uri="http://www.example.com/mytags" %>
    --%>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
