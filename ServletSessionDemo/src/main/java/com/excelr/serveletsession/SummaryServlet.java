package com.excelr.serveletsession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class SummaryServlet
 */
public class SummaryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

        // Get values from session
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");
        String thoughts = (String) session.getAttribute("thoughts");
        String mood = (String) session.getAttribute("mood");
        String secret = (String) session.getAttribute("secret");

        // Set the content type of the response to HTML
        response.setContentType("text/html");

        // Get a PrintWriter object to write the HTML response
        PrintWriter out = response.getWriter();

        // Write the HTML content
        out.println("<html>");
        out.println("<head>");
        out.println("<title>Summary</title>");
        out.println("<style>");
        out.println("body {");
        out.println("    background-color: #e1f3ff;");
        out.println("    display: flex;");
        out.println("    justify-content: center;");
        out.println("    align-items: center;");
        out.println("    height: 100vh;");
        out.println("    margin: 0;");
        out.println("    padding: 0;");
        out.println("}");
        out.println(".container {");
        out.println("    background-color: #ffffff;");
        out.println("    padding: 20px;");
        out.println("    border-radius: 5px;");
        out.println("    text-align: center;");
        out.println("}");
        out.println("h2 {");
        out.println("    margin-top: 0;");
        out.println("}");
        out.println("</style>");
        out.println("</head>");
        out.println("<body>");
        out.println("<div class=\"container\">");
        out.println("<h2>Summary</h2>");
        out.println("<p>Welcome, " + username + "!</p>");
        out.println("<p>Your password: " + password + "</p>");
        out.println("<p>Thoughts: " + thoughts + "</p>");
        out.println("<p>Your Mood: " + mood + "</p>");
        out.println("<p>Secret: " + secret + "</p>");
        out.println("<p>Thank you for using our application!</p>");
        out.println("</div>");
        out.println("</body>");
        out.println("</html>");

	}

}
