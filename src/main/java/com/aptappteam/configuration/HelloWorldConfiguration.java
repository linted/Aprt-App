/*This class describes what parts of the application can be seen from outside the server*/

package com.aptappteam.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.ViewResolverRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.aptappteam")
public class HelloWorldConfiguration extends WebMvcConfigurerAdapter{
	
	/* Name: configureViewResolvers
	 * Purpose: Set up where views will be found that can be seen from requests outside the domain
	 * Arguments: A ViewResolverRegistry that will hold what views are configured
	 * Returns: None
	 * */
	@Override
	public void configureViewResolvers(ViewResolverRegistry registry) {
		InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
		viewResolver.setViewClass(JstlView.class);
		viewResolver.setPrefix("/WEB-INF/views/");
		viewResolver.setSuffix(".jsp");
		registry.viewResolver(viewResolver);
	}

	/* Name: addResourceHandlers
	 * Purpose: Set up what resources will be able to be viewed from outside the domain
	 * Arguments: A ResourceHanderRegistry that will hold the Resource configuration
	 * Returns: None
	 * */
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/static/**").addResourceLocations("/static/");
	}

}