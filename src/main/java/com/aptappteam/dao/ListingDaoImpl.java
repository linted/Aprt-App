package com.aptappteam.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.ordering.antlr.Factory;
import org.springframework.stereotype.Repository;

import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
 
@Repository("listingDao")
public class ListingDaoImpl extends AbstractDao<Integer, Listing> implements ListingDao {
 
    public Listing findListingById(int id) {
    	Criteria cr = getSession().createCriteria(Listing.class);
        cr.add(Restrictions.eq("keyId",id));
        List<Listing> listings = cr.list();
    	return listings.get(0);
    }
 
//    public void saveListing(Listing Listing) {
//        persist(Listing);
//    }
 
//    public void deleteListingBySsn(String ssn) {
//        Query query = getSession().createSQLQuery("delete from Listing where ssn = :ssn");
//        query.setString("ssn", ssn);
//        query.executeUpdate();
//    }
 
    @SuppressWarnings("unchecked")
    public List<Listing> findAllListings() {   	
        Criteria cr = getSession().createCriteria(Listing.class);
        cr.add(Restrictions.eq("active",1));
        List<Listing> listings = cr.list();
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