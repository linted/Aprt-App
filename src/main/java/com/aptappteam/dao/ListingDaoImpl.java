package com.aptappteam.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.hibernate.sql.ordering.antlr.Factory;
import org.springframework.stereotype.Repository;
 
import com.aptappteam.model.Listing;
 
@Repository("listingDao")
public class ListingDaoImpl extends AbstractDao<Integer, Listing> implements ListingDao {
 
//    public Listing findById(int id) {
//        return getByKey(id);
//    }
 
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
//    	String hql ="SELECT * FROM HousingOffCampus WHERE Active = 1";
//    	Query query = getSession().createSQLQuery(hql);
//    	List<Listing> listings = query.list();
    	
//    	Criteria criteria = createEntityCriteria();
//        return (List<Listing>) criteria.list();    	
        Criteria cr = getSession().createCriteria(Listing.class);
        cr.add(Restrictions.eq("active",1));
        List<Listing> listings = cr.list();
    	return listings;
    }
 
//    public Listing findListingBySsn(String ssn) {
//        Criteria criteria = createEntityCriteria();
//        criteria.add(Restrictions.eq("ssn", ssn));
//        return (Listing) criteria.uniqueResult();
//    }
}