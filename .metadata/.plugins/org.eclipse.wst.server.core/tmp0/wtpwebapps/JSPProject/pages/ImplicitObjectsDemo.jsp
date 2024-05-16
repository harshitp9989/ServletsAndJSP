<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Implicit Objects Demo</title>
</head>
<body>
    <h1>Implicit Objects Demo</h1>
    <p>JSP provides a set of predefined objects, referred to as implicit objects, that can be directly used in JSP pages.</p>
    <p>Examples of implicit objects:</p>
    <ul>
        <li><strong>request:</strong> <%= request.getParameter("name") %></li>
        <!-- The value of the "name" parameter passed in the URL query string -->
        
        <li><strong>response:</strong> <%= response.getBufferSize() %></li>
        <!-- The buffer size for the response -->
        
        <li><strong>session:</strong> <%= session.isNew() %></li>
        <!-- Checks if this is a new session -->
        
        <li><strong>application:</strong> <%= application.getRealPath("/") %></li>
        <!-- The real path of the application's root directory -->
        
        <li><strong>out:</strong> <% out.println("Hello, implicit objects!"); %></li>
        <!-- Writes "Hello, implicit objects!" to the response output -->
        
        <li><strong>pageContext:</strong> <%= pageContext.getServletContext().getContextPath() %></li>
        <!-- Gets the context path of the servlet context -->
        
        <li><strong>page:</strong> <%= page.toString() %></li>
        <!-- The reference to the JSP itself (JspWriter) -->
        
        <li><strong>config:</strong> <%= config.getServletContext().getServerInfo() %></li>
        <!-- Gets the server information from the servlet context -->
    </ul>
    <br>
    <a href="../index.jsp">Back to Home</a>
</body>
</html>