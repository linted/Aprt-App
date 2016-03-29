package com.aptappteam.dao;

import java.util.List;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
 
public interface ListingDao {
 
    Listing findListingById(int id);
 
    void saveListing(Listing listing);
     
    void deleteListingById(int id);
     
    List<SubListing> findAllListings();
 
//    Listing findEmployeeBySsn(String ssn);
    
    List<Listing> findListingByFilters(Filters filters);
 
}