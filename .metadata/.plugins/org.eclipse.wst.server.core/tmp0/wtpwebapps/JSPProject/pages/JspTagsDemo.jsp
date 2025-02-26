<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JSP Tags Demo</title>
</head>
<body>
    <h1>JSP Tags Demo</h1>
    <p>There are three types of JSP tags:</p>
    <ol>
        <li><strong>Directive Tags:</strong> Provide information about
            the page, like page settings and imports. Example:
            <%-- Example of a page directive that sets the content type to HTML --%>
            <%@ page language="java" contentType="text/html; charset=UTF-8"%></li>

        <li><strong>Scripting Tags:</strong> Embed Java code directly
            into the JSP page. Example:
            <%-- Example of using a scripting tag to display the current date --%>
            <%
            java.util.Date currentDate = new java.util.Date();
            %>
            <p>Current date: <%=currentDate%></p></li>

        <li><strong>Action Tags:</strong> Perform specific tasks, like
            forwarding requests, including files, etc. Example:
            <%-- Example of using an action tag to include the content of another JSP --%>
            <jsp:include page="included.jsp" /></li>
    </ol>
    <br>
    <a href="../index.jsp">Back to Home</a>
</body>
</html>
	