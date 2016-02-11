package com.aptappteam.dao;

import java.util.List;

import com.aptappteam.model.Listing;
 
public interface ListingDao {
 
    Listing findById(int id);
 
    void saveListing(Listing employee);
     
//    void deleteEmployeeBySsn(String ssn);
     
    List<Listing> findAllListings();
 
//    Listing findEmployeeBySsn(String ssn);
 
}