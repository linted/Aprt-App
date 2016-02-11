package com.aptappteam.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.aptappteam.model.Listing;
import com.aptappteam.service.ListingService;

@Controller
@RequestMapping("/listings")
public class ListingsController {
	
	@Autowired
	ListingService service;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String listListings(ModelMap model) {
		List<Listing> listings = service.findAllListings();
		model.addAttribute("listings", listings);
		return "alllistings";
	}
}
