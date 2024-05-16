package com.excelr.serveletsession;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class Servlet2
 */
public class Servlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();

        // Get values from session
        String username = (String) session.getAttribute("username");
        String password = (String) session.getAttribute("password");

        // Get values from form submission
        String thoughts = request.getParameter("thoughts");
        String mood = request.getParameter("mood");
        String secret = request.getParameter("secret");

        // Store additional values in session
        session.setAttribute("thoughts", thoughts);
        session.setAttribute("mood", mood);
        session.setAttribute("secret", secret);

        // Redirect to the summary page
        response.sendRedirect("SummaryServlet");
	}

}
