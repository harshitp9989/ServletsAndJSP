package com.servlet.cookiesdemo;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ModifyCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Get the name and new value of the cookie to modify
        String cookieName = request.getParameter("cookieName");
        String newCookieValue = request.getParameter("cookieValue");

        // Get all cookies from the request
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            for (Cookie cookie : cookies) {
                // Check if the cookie name matches the provided name
                if (cookie.getName().equals(cookieName)) {
                    // Modify the cookie value and add it back to the response
                    cookie.setValue(newCookieValue);
                    response.addCookie(cookie);
                    response.getWriter().println("Cookie modified successfully!");
                    return;
                }
            }
        }

        // If the cookie is not found, send a message
        response.getWriter().println("Cookie not found!");

	}

}
