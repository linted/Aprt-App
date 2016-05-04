/*This package sets up the server for HTTP requests and controls cross-domain requests.

*/
package com.aptappteam.configuration;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletResponse;

/*import jdk.nashorn.internal.ir.RuntimeNode.Request;*/


public class CORSFilter implements Filter {
	
	
	/*
	 * Name: doFilter
	 * Purpose: sets up the Filter
	 * Arguments: ServletRequest req is the HTTP request coming in, ServletResponse res is the reposnse from the server, FilterChain chain is the chain of filters. 
	 * Returns: nothing
	 * Errors and Exceptions: throws IO and Servlet Exceptions
	 */
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain) throws IOException, ServletException {
		HttpServletResponse response = (HttpServletResponse) res;
		response.setHeader("Access-Control-Allow-Origin", "*");
		response.setHeader("Access-Control-Allow-Methods", "POST, GET, PUT, OPTIONS, DELETE");
		response.setHeader("Access-Control-Max-Age", "3600");
		response.setHeader("Access-Control-Allow-Headers", "x-requested-with, Content-Type");
		chain.doFilter(req, res);
	}
	
	/* Name: init
	 * Purpose:initializes the filter configuration
	 * Arguments: FilterConfig filterConfig
	 * Returns: Nothing
	 * */
	public void init(FilterConfig filterConfig) {}
	
	/* Name: destroy
	 * Purpose: Presumably is the destructor for the class
	 * Arguments: None
	 * Returns: None
	 * */
	public void destroy() {}

}