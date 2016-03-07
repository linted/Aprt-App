package com.aptappteam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aptappteam.model.Listing;

@Controller
@RequestMapping("/")
public class IndexController {

	  @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String getIndexPage() {
	        return "index";
	    }
	  
	  @RequestMapping(value = "/properties/{id}", method = RequestMethod.GET)
	  public String getDetailedListingPage(@PathVariable Integer id) {
		  return "index";
	  }
	  
	  @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
		public String newListing(ModelMap model) {
			Listing listing = new Listing();
			model.addAttribute("listing", listing);
			model.addAttribute("edit", false);
			return "createlisting";
		}

}