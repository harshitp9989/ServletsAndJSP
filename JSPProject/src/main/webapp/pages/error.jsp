<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Error Page</title>
</head>
<body>
    <h1>An error occurred:</h1>
    <p><%= exception.getMessage() %></p>
</body>
</html>
