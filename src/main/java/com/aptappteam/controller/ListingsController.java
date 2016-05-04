/*This class how listings are controlled for the database*/

package com.aptappteam.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
import com.aptappteam.service.ListingService;

@RestController
@RequestMapping("/listings")
public class ListingsController {
	
	@Autowired
	ListingService service;
	
	/* Name: listAllListings
	 * Purpose: retrieves all listing from the database
	 * Arguments: None
	 * Returns: A list of all listings, and an good message from the server.
	 * */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ResponseEntity<List<SubListing>> listAllListings() {
		List<SubListing> listings = service.findAllListings();
		if (listings.isEmpty()) {
			return new ResponseEntity<List<SubListing>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<SubListing>>(listings, HttpStatus.OK);
	}
	
	/* Name: viewListing
	 * Purpose: returns a single listing
	 * Arguments: The id of a listing
	 * Returns: A single listing.
	 * */
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<Listing> viewListing(@PathVariable int id) {
//		System.out.println(id);
//		System.out.println(id.getClass().toString());
		Listing item = service.findListingById(id);
		//Still needs error handling
		return new ResponseEntity<Listing>(item, HttpStatus.OK);
	}
	
	/* Name: updateListing
	 * Purpose: updates a listing in the database
	 * Arguments: A listing
	 * Returns: HttpStatus dependent on if it worked.
	 * */
	
	//Probably need to have a check to make sure this is saved correctly
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public HttpStatus updateListing(@RequestBody Listing listing) {
		if (service.updateListing(listing)) {
			return HttpStatus.OK;
		} else {
			return HttpStatus.NOT_FOUND;
		}
	}
	
	/* Name: deleteListing
	 * Purpose: deletes a listing
	 * Arguments: A KeyId for a listing
	 * Returns: An HttpStatus of OK
	 * */
	
	//Need to perform check to make sure delete doesn't fail
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public HttpStatus deleteListing(@PathVariable int id) {
		service.deleteListingById(id);
		return HttpStatus.OK;
	}
	
	/* Name: saveListing
	 * Purpose: Saves a new listing to the database
	 * Arguments: A listing object
	 * Returns: A Boolean answer to whether the listing saved properly.
	 * */
	
	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public Integer saveListing(@RequestBody Listing listing) {

		System.out.println("listing object");
		System.out.println(listing.getHousingHeadline().toString());
		
		return service.saveListing(listing);
	}
}