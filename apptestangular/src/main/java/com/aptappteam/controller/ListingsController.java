package com.aptappteam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import com.aptappteam.model.Listing;
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
public class ListingsController {
	
	@Autowired
	ListingService service;
	
	
	@RequestMapping(value = "/listings/", method = RequestMethod.GET)
	public ResponseEntity<List<Listing>> listAllListings() {
		List<Listing> listings = service.findAllListings();
		if (listings.isEmpty()) {
			return new ResponseEntity<List<Listing>>(HttpStatus.NO_CONTENT);
		}
		return new ResponseEntity<List<Listing>>(listings, HttpStatus.OK);
	}
}