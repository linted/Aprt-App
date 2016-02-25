package com.aptappteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/properties")
public class IndexController {

	  @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String getIndexPage() {
	        return "mike";
	    }
	  
	  @RequestMapping(value = "/{id}", method = RequestMethod.GET)
	  public String getDetailedListingPage(@PathVariable Integer id) {
		  return "detailedlisting";
	  }

}