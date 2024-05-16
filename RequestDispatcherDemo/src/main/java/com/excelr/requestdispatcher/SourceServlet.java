package com.excelr.requestdispatcher;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SourceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Set a message in the request attribute
		request.setAttribute("message", "Hello from SourceServlet! -- I am Dada  !!! from Servlet 1 ..");

		// Forward the request to the TargetServlet
		request.getRequestDispatcher("/TargetServlet").forward(request, response);

	}

}
