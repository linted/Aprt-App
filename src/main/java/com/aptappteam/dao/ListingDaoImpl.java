/*This class implements the Listing Data Abstract Object*/

package com.aptappteam.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.ordering.antlr.Factory;
import org.springframework.stereotype.Repository;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
import com.aptappteam.model.Organization;
 
@Repository("listingDao")
public class ListingDaoImpl extends AbstractDao<Integer, Listing> implements ListingDao {
 
	/* Name: findListingById
	 * Purpose: finds a single listing in the database that matches an id
	 * Arguments: A Integer KeyId for a listing
	 * Returns: A listing that matches the ID.
	 * */
    public Listing findListingById(int id) {
    	Criteria cr = getSession().createCriteria(Listing.class);
        cr.add(Restrictions.eq("keyId",id));
        List<Listing> listings = cr.list();
    	return listings.get(0);
    }
 
    /* Name: saveListing
	 * Purpose: saves a listing to the database
	 * Arguments: A listing object
	 * Returns: None
	 * */
    public void saveListing(Listing Listing) {
        persist(Listing);
    }
 
    /* Name: deleteListingById
	 * Purpose: deletes a listing for a specific Id
	 * Arguments: A Integer KeyId for a listing
	 * Returns: None
	 * */
    public void deleteListingById(int id) {
    	Listing listing = new Listing();
    	listing.setKeyId(id);
    	getSession().delete(listing);
    }
 
    /* Name: findAllListings
	 * Purpose: finds all listings
	 * Arguments: None
	 * Returns: A List of all Listings
	 * */
    @SuppressWarnings("unchecked")
    public List<SubListing> findAllListings() {   	
        Criteria cr = getSession().createCriteria(SubListing.class);
        cr.add(Restrictions.eq("active",1));
        
        List<SubListing> listings = cr.list();
    	return listings;
    }
    
    
    /* Name: findListingByFilters
	 * Purpose: finds a Listing by filters
	 * Arguments: Filters to filter by
	 * Returns: null
	 * */
    public List<Listing> findListingByFilters(Filters filters) {
		return null;
    	
    	
    }
}