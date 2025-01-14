package com.servlet.cookiesdemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class RetrieveCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Get the name of the cookie to retrieve
		String cookieName = request.getParameter("cookieName");

		// Get all cookies from the request
		Cookie[] cookies = request.getCookies();

		if (cookies != null) {
			for (Cookie cookie : cookies) {
				// Check if the cookie name matches the provided name
				if (cookie.getName().equals(cookieName)) {
					// Send the cookie value as the response
					response.getWriter().println("Cookie Value: " + cookie.getValue());
					return;
				}
			}
		}

		// If the cookie is not found, send a message
		response.getWriter().println("Cookie not found!");

	}

}
