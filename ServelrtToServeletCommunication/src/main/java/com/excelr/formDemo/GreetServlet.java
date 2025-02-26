package com.excelr.formDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class GreetServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // HTML page with greeting message
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Greetings!</title>");
        out.println("<style>");
        out.println("body { background-color: lightblue; text-align: center; }");
        out.println("h2 { color: darkblue; }");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h2>Hello, " + username + "!</h2>");
        out.println("<p>Welcome to our website. Please change your password since I know that your password is " + password + ".</p>");
        out.println("</body>");
        out.println("</html>");
    }
}
