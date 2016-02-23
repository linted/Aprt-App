package com.aptappteam.service;

import java.util.List;

import com.aptappteam.model.Listing;
 
public interface ListingService {
 
    Listing findListingById(int id);
     
//    void saveListing(Listing employee);
     
//    void updateEmployee(Employee employee);
     
//    void deleteEmployeeBySsn(String ssn);
 
    List<Listing> findAllListings(); 
     
//    Listing findEmployeeBySsn(String ssn);
 
//    boolean isEmployeeSsnUnique(Integer id, String ssn);
     
}