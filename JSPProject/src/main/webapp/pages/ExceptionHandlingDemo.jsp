<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exception Handling Demo</title>
</head>
<body>
    <h1>Exception Handling Demo</h1>
    
    <!-- Using Scriptlet Blocks -->
    <h2>Using Scriptlet Blocks</h2>
    <%
    try {
        int result = 10 / 5; // This will cause an ArithmeticException
        out.println("Result: " + result);
    } catch (ArithmeticException e) {
        out.println("An error occurred: " + e.getMessage());
    } finally {
        out.println("Finally block executed.");
    }
    %>
    
    <!-- Using Error Page Directive -->
    <h2>Using Error Page Directive</h2>
    <%@ page errorPage="error.jsp" %>
    <%
    // Simulate a NullPointerException
    String nullString = "hi";
    out.println(nullString.length());
    %>
    
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
