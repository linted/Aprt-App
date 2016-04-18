package com.aptappteam.service;
 
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
 
import com.aptappteam.dao.ListingDao;
import com.aptappteam.model.Filters;
import com.aptappteam.model.Listing;
import com.aptappteam.model.SubListing;
 
@Service("listingService")
@Transactional
public class ListingServiceImpl implements ListingService {
 
    @Autowired
    private ListingDao dao;
     
    public Listing findListingById(int id) {
        return dao.findListingById(id);
    }
    
    public Integer saveListing(Listing listing) {
		dao.saveListing(listing);
		return listing.getKeyId();
	}
 
    /*
     * Since the method is running with Transaction, No need to call hibernate update explicitly.
     * Just fetch the entity from db and update it with proper values within transaction.
     * It will be updated in db once transaction ends. 
     */
    public boolean updateListing(Listing Listing) {
        Listing entity = dao.findListingById(Listing.getKeyId());
        if(entity!=null){
            entity.setHousingHeadline(Listing.getHousingHeadline());
            entity.setHousingType(Listing.getHousingType());
            entity.setForSale(Listing.getForSale());
            entity.setWater(Listing.getWater());
            entity.setHeat(Listing.getHeat());
            entity.setElectricity(Listing.getElectricity());
            entity.setGas(Listing.getGas());
            entity.setCable(Listing.getCable());
            entity.setPhone(Listing.getPhone());
            entity.setTrash(Listing.getTrash());
            entity.setBedrooms(Listing.getBedrooms());
            entity.setBathrooms(Listing.getBathrooms());
            entity.setSharedBathroom(Listing.getSharedBathroom());
            entity.setWasherDryer(Listing.getWasherDryer());
            entity.setFurnished(Listing.getFurnished());
            entity.setAirConditioned(Listing.getAirConditioned());
            entity.setPetsAllowed(Listing.getPetsAllowed());
            entity.setLease(Listing.getLease());
            entity.setPreferences(Listing.getPreferences());
            entity.setPrice(Listing.getPrice());
            entity.setDeposit(Listing.getDeposit());
            entity.setLocation(Listing.getLocation());
            entity.setComments(Listing.getComments());
            entity.setFloorPlan(Listing.getFloorPlan());
            entity.setHousingPhoto(Listing.getHousingPhoto());
            entity.setEditDate(Listing.getEditDate());
            entity.setActive(Listing.getActive());
            entity.setSiteUrl(Listing.getSiteUrl());
            entity.setLockChanges(Listing.getLockChanges());
            entity.setDeadbolts(Listing.getDeadbolts());
            entity.setPeepholes(Listing.getPeepholes());
            entity.setBalconyLock(Listing.getBalconyLock());
            entity.setExteriorLocks(Listing.getExteriorLocks());
            entity.setBatterySmokeDetectors(Listing.getBatterySmokeDetectors());
            entity.setHardWiredSmokeDetectors(Listing.getHardWiredSmokeDetectors());
            entity.setCarbonDioxideDetector(Listing.getCarbonDioxideDetector());
            entity.setFireExtinguisher(Listing.getFireExtinguisher());
            entity.setExteriorLighting(Listing.getExteriorLighting());
            entity.setSafetyInspections(Listing.getSafetyInspections());
            entity.setSecurityAlarm(Listing.getSecurityAlarm());
            entity.setSecurityCameras(Listing.getSecurityCameras());
            entity.setSecurityGuard(Listing.getSecurityGuard());
            entity.setGatedCommunity(Listing.getGatedCommunity());
            entity.setEmail(Listing.getEmail());
            entity.setContactPhone(Listing.getContactPhone());
            entity.setLatitude(Listing.getLatitude());
            entity.setLongitude(Listing.getLongitude());
            entity.setStreetAddress(Listing.getStreetAddress());
            return true;
        } else {
        	return false;
        }
    }
 
    public void deleteListingById(int id) {
        dao.deleteListingById(id);
    }
     
    public List<SubListing> findAllListings() {
        return dao.findAllListings();
    }
    
    public List<Listing> findListingByFilters(Filters filters) {
    	return dao.findListingByFilters(filters);
    }
 
//    public Listing findListingBySsn(String ssn) {
//        return dao.findListingBySsn(ssn);
//    }
 
//    public boolean isListingSsnUnique(Integer id, String ssn) {
//        Listing Listing = findListingBySsn(ssn);
//        return ( Listing == null || ((id != null) && (Listing.getId() == id)));
//    }
     
}