package com.excelr.formDemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		// HTML form
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Welcome to the Servlet World</title>");
		out.println("<style>");
		out.println("body { background-color: lightblue; text-align: center; }");
		out.println("table { margin: 0 auto; }");
		out.println("td { padding: 5px; }");
		out.println("</style>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h2>Welcome to the Servlet World</h2>");
		out.println("<h3>Enter your details below and click Submit</h3>");
		out.println("<table>");
		out.println("<form action='GreetServlet' method='post'>");
		out.println("<tr><td>Username :</td><td><input type='text' name='username'></td></tr>");
		out.println("<tr><td>Password :</td><td><input type='password' name='password'></td></tr>");
		out.println("<tr><td colspan='2'><input type='submit' value='Submit'> <input type='reset' value='Clear'></td></tr>");
		out.println("</form>");
		out.println("</table>");
		out.println("</body>");
		out.println("</html>");
		
	}

}
