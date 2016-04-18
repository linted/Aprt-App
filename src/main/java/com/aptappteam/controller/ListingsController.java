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

//@Controller
//@RequestMapping("/listings")
//public class ListingsController {
//	
//	@Autowired
//	ListingService service;
//	
//	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String listListings(ModelMap model) {
//		List<Listing> listings = service.findAllListings();
//		model.addAttribute("listings", listings);
//		return "alllistings";
//	}
//}

@RestController
@RequestMapping("/listings")
public class ListingsController {
	
	@Autowired
	ListingService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ResponseEntity<List<SubListing>> listAllListings() {
		List<SubListing> listings = service.findAllListings();
		if (listings.isEmpty()) {
			return new ResponseEntity<List<SubListing>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<SubListing>>(listings, HttpStatus.OK);
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ResponseEntity<Listing> viewListing(@PathVariable int id) {
//		System.out.println(id);
//		System.out.println(id.getClass().toString());
		Listing item = service.findListingById(id);
		//Still needs error handling
		return new ResponseEntity<Listing>(item, HttpStatus.OK);
	}
	
	//Probably need to have a check to make sure this is saved correctly
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public HttpStatus updateListing(@RequestBody Listing listing) {
		if (service.updateListing(listing)) {
			return HttpStatus.OK;
		} else {
			return HttpStatus.NOT_FOUND;
		}
	}
	
	//Need to perform check to make sure delete doesn't fail
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public HttpStatus deleteListing(@PathVariable int id) {
		service.deleteListingById(id);
		return HttpStatus.OK;
	}
	
//	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
//	public String saveEmployee(@Valid Listing listing, BindingResult result,
//			ModelMap model) {
//
//		if (result.hasErrors()) {
//			return "registration";
//		}
//
//		/*
//		 * Preferred way to achieve uniqueness of field [ssn] should be implementing custom @Unique annotation 
//		 * and applying it on field [ssn] of Model class [Employee].
//		 * 
//		 * Below mentioned peace of code [if block] is to demonstrate that you can fill custom errors outside the validation
//		 * framework as well while still using internationalized messages.
//		 * 
//		 */
//		
//		System.out.println("listing object");
//		System.out.println(listing.getHousingHeadline().toString());
//		
//		service.saveListing(listing);
//
//		model.addAttribute("success", "Listing " + listing.getHousingHeadline() + " registered successfully");
//		return "success";
//	}
	
	@RequestMapping(value = { "/new" }, method = RequestMethod.POST)
	public Integer saveListing(@RequestBody Listing listing) {

		System.out.println("listing object");
		System.out.println(listing.getHousingHeadline().toString());
		
		return service.saveListing(listing);
	}
}