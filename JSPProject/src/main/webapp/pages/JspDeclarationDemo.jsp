<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Declaration Example</title>
</head>
<body>
    <h1>JSP Declaration Example</h1>
    <p>A JSP declaration is used to declare variables, methods, or other constructs in a JSP page.</p>
    
    <h2>Declaration Syntax:</h2>
    <p>A declaration starts with percentile and ends with percentile tags.</p>
    
    <h2>Example:</h2>
    <%-- JSP declaration --%>
    <% int x = 10; 
       String message = "Value of x: " + x; %>
    
    <p><%= message %></p>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
