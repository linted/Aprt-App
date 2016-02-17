package com.aptappteam.service;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.aptappteam.dao.ListingDao;
import com.aptappteam.model.Listing;
 
@Service("listingService")
@Transactional
public class ListingServiceImpl implements ListingService {
 
    @Autowired
    private ListingDao dao;
     
//    public Listing findById(int id) {
//        return dao.findById(id);
//    }
 
//    public void saveListing(Listing Listing) {
//        dao.saveListing(Listing);
//    }
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
//    public void updateListing(Listing Listing) {
//        Listing entity = dao.findById(Listing.getId());
//        if(entity!=null){
//            entity.setName(Listing.getName());
//            entity.setJoiningDate(Listing.getJoiningDate());
//            entity.setSalary(Listing.getSalary());
//            entity.setSsn(Listing.getSsn());
//        }
//    }
 
//    public void deleteListingBySsn(String ssn) {
//        dao.deleteListingBySsn(ssn);
//    }
     
    public List<Listing> findAllListings() {
        return dao.findAllListings();
    }
 
//    public Listing findListingBySsn(String ssn) {
//        return dao.findListingBySsn(ssn);
//    }
 
//    public boolean isListingSsnUnique(Integer id, String ssn) {
//        Listing Listing = findListingBySsn(ssn);
//        return ( Listing == null || ((id != null) && (Listing.getId() == id)));
//    }
     
}