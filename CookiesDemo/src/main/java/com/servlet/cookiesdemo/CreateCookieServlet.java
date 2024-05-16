package com.servlet.cookiesdemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class CreateCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Retrieve data from the form
		String cookieName = request.getParameter("cookieName");
		String cookieValue = request.getParameter("cookieValue");

		// Create a new cookie with the provided name and value
		Cookie cookie = new Cookie(cookieName, cookieValue);

		// Set the cookie's lifespan to 24 hours
		//optional
		cookie.setMaxAge(24 * 60 * 60); // 24 hours in seconds

		// Add the cookie to the response
		response.addCookie(cookie);

		// Send a message indicating that the cookie was created successfully
		response.getWriter().println("Cookie created successfully!");

	}

}
