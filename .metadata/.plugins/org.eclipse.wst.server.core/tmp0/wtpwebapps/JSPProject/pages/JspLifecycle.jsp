<%@ page language="java" contentType="text/html;  charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>JSP Lifecycle Demo</title>
</head>
<body>
    <h1>JSP Lifecycle Demo</h1>
    <p>The JSP lifecycle consists of the following phases:</p>
    <ol>
        <li><strong>Translation:</strong> JSP pages are first translated into servlets by the JSP container.</li>
        <%-- Example of translation phase --%>
        <%= "Translation phase" %>
        
        <li><strong>Compilation:</strong> The servlet is then compiled into bytecode.</li>
        <%-- Example of compilation phase --%>
        <%= "Compilation phase" %>
        
        <li><strong>Initialization:</strong> The servlet is instantiated and its <code>init()</code> method is called.</li>
        <%-- Example of initialization phase --%>
        <%= "Initialization phase" %>
        
        <li><strong>Request Handling:</strong> For each incoming request, the <code>service()</code> method of the servlet is invoked.</li>
        <%-- Example of request handling phase --%>
        <%= "Request Handling phase" %>
        
        <li><strong>Destruction:</strong> When the application is shut down, the <code>destroy()</code> method of the servlet is called.</li>
        <%-- Example of destruction phase --%>
        <%= "Destruction phase" %>
    </ol>
    <br>
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
