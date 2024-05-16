package com.excelr.serveletsession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

public class Servlet1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String username = request.getParameter("username");
	        String password = request.getParameter("password");

	        // Create a new session
	        HttpSession session = request.getSession();
	        
	        // Store username and password in session
	        session.setAttribute("username", username);
	        session.setAttribute("password", password);
	        response.getWriter().println("Going to FetchUserDetails.html...."); //THIS WILL NOT GET PRINTED!

	        // Redirect to the second form
	        response.sendRedirect("FetchUserDetails.html");

	}

}
 