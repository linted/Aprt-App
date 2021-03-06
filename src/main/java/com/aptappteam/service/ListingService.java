/*This interface outlines the Listing Service*/

package com.aptappteam.service;

import java.util.List;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
 
public interface ListingService {
 
    Listing findListingById(int id);
     
    Integer saveListing(Listing listing);
     
    boolean updateListing(Listing listing);
     
    void deleteListingById(int id);
 
    List<SubListing> findAllListings(); 
     
//    Listing findEmployeeBySsn(String ssn);
 
//    boolean isEmployeeSsnUnique(Integer id, String ssn);
    
    List<Listing> findListingByFilters(Filters filters);
     
}