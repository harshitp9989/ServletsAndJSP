<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Tags Demo</title>
</head>
<body>
    <h1>JSP Tags Demo</h1>
    <p>In this example, we'll explore JSP declaration, scriptlet, and expression tags.</p>

    <%-- JSP Declaration Tag --%>
    <%!
        String greeting = "Hello, from JSP declaration!";
    %>
    <p><strong>JSP Declaration Tag:</strong> <%= greeting %></p>

    <%-- JSP Scriptlet Tag --%>
    <%
        String message = "This is a message from JSP scriptlet.";
    %>
    <p><strong>JSP Scriptlet Tag:</strong> <%= message %></p>

    <%-- JSP Expression Tag --%>
    <p><strong>JSP Expression Tag:</strong> <%= 5 + 3 %></p>

    <br>
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
