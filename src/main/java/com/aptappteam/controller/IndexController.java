/*This class implements the allowed mappings for URIs*/

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
		
	/* Name: getIndexPage
	 * Purpose: gets the URI for the index page.
	 * Arguments: None
	 * Returns: A String with the URI
	 * */
	  @RequestMapping(value = "/", method = RequestMethod.GET)
	    public String getIndexPage() {
	        return "index";
	    }
	  
	  /* Name: getDetailedListingPage
		 * Purpose: gets the URI for the DetailedListing page.
		 * Arguments: None
		 * Returns: A String with the URI
		 * */
	  @RequestMapping(value = "/properties/{id}", method = RequestMethod.GET)
	  public String getDetailedListingPage(@PathVariable Integer id) {
		  return "index";
	  }
	  /* Name: newListing
		 * Purpose: creates a new listing
		 * Arguments: A ModelMap of all the models
		 * Returns: A String with the URI of the create listing page
		 * */
	  @RequestMapping(value = { "/new" }, method = RequestMethod.GET)
		public String newListing(ModelMap model) {
			Listing listing = new Listing();
			model.addAttribute("listing", listing);
			model.addAttribute("edit", false);
			return "index";
		}

}