/*This class Initializes all of the configuration of the application*/

package com.aptappteam.configuration;

import javax.servlet.Filter;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class HelloWorldInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
 
	/* Name: getRootConfigClasses
	 * Purpose: Set up configuration from HelloWorldConfiguration
	 * Arguments: None
	 * Returns: A HelloWorldConfiguration object
	 * */
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[] { HelloWorldConfiguration.class };
    }
  
    /* Name: getServletConfigClasses
	 * Purpose: In theory, set up Servlet Configuration
	 * Arguments: None
	 * Returns: null
	 * */
    @Override
    protected Class<?>[] getServletConfigClasses() {
        return null;
    }
  
    /* Name: getServletMappings
	 * Purpose: Set up the root of the website map
	 * Arguments: None
	 * Returns: a String with the root of the website map
	 * */
    @Override
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
    
    /* Name: getServletFilters
	 * Purpose: Run the CORSFilter to control access to the website
	 * Arguments: None
	 * Returns: A CORSFilter object
	 * */
    @Override
    protected Filter[] getServletFilters() {
    	Filter [] singleton = { new CORSFilter() };
    	return singleton;
	}
 
}