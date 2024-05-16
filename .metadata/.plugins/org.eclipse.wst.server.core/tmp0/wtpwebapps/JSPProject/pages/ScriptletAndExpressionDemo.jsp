<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Scriptlet and Expression Demo</title>
</head>
<body>
    <h1>Scriptlet and Expression Demo</h1>
    <p>In JSP, you can embed Java code and expressions using scriptlets and expressions.</p>
    
    <h2>Scriptlet:</h2>
    <p>A scriptlet allows you to write Java code within the JSP page.</p>
    
    <p>Example:</p>
    <%
        String message = "Hello, JSP!";
        out.println(message);
        out.println("Current Date and Time: " + new java.util.Date());
    %>
    
    <h2>Expression:</h2>
    <p>An expression allows you to directly insert a value into the HTML content.</p>
    
    <p>Example:</p>
    <p>Message: <%= "Hello, JSP!" %></p>
    <p>Current Date and Time: <%= new java.util.Date() %></p>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
