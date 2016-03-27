package com.aptappteam.service;

import java.util.List;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
 
public interface ListingService {
 
    Listing findListingById(int id);
     
    Listing saveListing(Listing listing);
     
//    void updateEmployee(Employee employee);
     
//    void deleteEmployeeBySsn(String ssn);
 
    List<SubListing> findAllListings(); 
     
//    Listing findEmployeeBySsn(String ssn);
 
//    boolean isEmployeeSsnUnique(Integer id, String ssn);
    
    List<Listing> findListingByFilters(Filters filters);
     
}