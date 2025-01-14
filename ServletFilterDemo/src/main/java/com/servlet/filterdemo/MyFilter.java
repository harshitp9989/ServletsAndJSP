package com.servlet.filterdemo;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import java.io.IOException;

/**
 * Servlet Filter implementation class MyFilter
 */
public class MyFilter extends HttpFilter implements Filter {
       
    /**
     * @see HttpFilter#HttpFilter()
     */
    public MyFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// This method is called when the filter is being removed
        System.out.println("Filter destroyed!");
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {

        // This method is called for each request that matches the filter's URL pattern
        
        // Print a message indicating the filter is processing the request
        System.out.println("Filter is processing the request.");
        
        // Continue the filter chain execution (proceed to the next filter or servlet)
        chain.doFilter(request, response);
        
        // Print a message indicating the filter is processing the response
        System.out.println("Filter is processing the response.");

	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// This method is called when the filter is initialized
        System.out.println("Filter initialized!");
	}

}
