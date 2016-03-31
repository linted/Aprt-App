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
 
@Repository("listingDao")
public class ListingDaoImpl extends AbstractDao<Integer, Listing> implements ListingDao {
 
    public Listing findListingById(int id) {
    	Criteria cr = getSession().createCriteria(Listing.class);
        cr.add(Restrictions.eq("keyId",id));
        List<Listing> listings = cr.list();
    	return listings.get(0);
    }
 
    public void saveListing(Listing Listing) {
        persist(Listing);
    }
 
    public void deleteListingById(int id) {
    	Listing listing = new Listing();
    	listing.setKeyId(id);
    	getSession().delete(listing);
    }
 
    @SuppressWarnings("unchecked")
    public List<SubListing> findAllListings() {   	
        Criteria cr = getSession().createCriteria(SubListing.class);
        cr.add(Restrictions.eq("active",1));
        
        List<SubListing> listings = cr.list();
    	return listings;
    }
    
    public List<Listing> findListingByFilters(Filters filters) {
		return null;
    	
    	
    }
 
//    public Listing findListingBySsn(String ssn) {
//        Criteria criteria = createEntityCriteria();
//        criteria.add(Restrictions.eq("ssn", ssn));
//        return (Listing) criteria.uniqueResult();
//    }
}