/*This class implements a listing*/

package com.aptappteam.model;

import java.math.BigDecimal;
import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
 
import org.hibernate.annotations.Type;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name="HousingOffCampus")
public class Listing {
	
	
	//Variable Declarations
	@Id
	@Column(name = "KeyID", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer keyId;
	
	@Column(name = "HousingID")
	private Integer housingId;
	
	@Column(name = "OrgID")
	private Integer orgId;
	
	@Column(name = "HousingHeadline")
	private String housingHeadline;
	
	@Column(name = "HousingType")
	private String housingType;
	
	@Column(name = "ForSale")
	private Boolean forSale;
	
	@Column(name = "Water")
	private Boolean water;
	
	@Column(name = "Heat")
	private Boolean heat;
	
	@Column(name = "Electricity")
	private Boolean electricity;
	
	@Column(name = "Gas")
	private Boolean gas;
	
	@Column(name = "Cable")
	private Boolean cable;
	
	@Column(name = "Phone")
	private Boolean phone;
	
	@Column(name = "Trash")
	private Boolean trash;
	
	@Column(name = "Bedrooms")
	private Integer bedrooms;
	
	@Column(name = "Bathrooms")
	private Integer bathrooms;
	
	@Column(name = "SharedBathroom")
	private Boolean sharedBathroom;
	
	@Column(name = "WasherDryer")
	private Integer washerDryer;
	
	@Column(name = "Furnished")
	private Boolean furnished;
	
	@Column(name = "AirConditioned")
	private Integer airConditioned;
	
	@Column(name = "PetsAllowed")
	private Integer petsAllowed;
	
	@Column(name = "Lease")
	private String lease;
	
	@Column(name = "Preferences")
	private String preferences;
	
	@Column(name = "Price")
	private Integer price;
	
	@Column(name = "Deposit")
	private Integer deposit;
	
	@Column(name = "Location")
	private String location;
	
	@Column(name = "StreetAddress")
	private String streetAddress;
	
	@Column(name = "Comments")
	private String comments;
	
	@Column(name = "FloorPlan")
	private String floorPlan;
	
	@Column(name = "HousingPhoto")
	private String housingPhoto;
	
	@Column(name = "CreateDate")
	private Timestamp createDate;
	
	@Column(name = "PostingDate")
	private Timestamp postingDate;
	
	@Column(name = "EditDate")
	private Timestamp editDate;
	
	@Column(name = "Active")
	private Integer active;
	
	@Column(name = "SiteURL")
	private String siteUrl;
	
	@Column(name = "LockChanges")
	private Boolean lockChanges;
	
	@Column(name = "Deadbolts")
	private Boolean deadbolts;
	
	@Column(name = "Peepholes")
	private Boolean peepholes;
	
	@Column(name = "BalconyLock")
	private Boolean balconyLock;
	
	@Column(name = "ExteriorLocks")
	private Boolean exteriorLocks;
	
	@Column(name = "BatterySmokeDetectors")
	private Boolean batterySmokeDetectors;
	
	@Column(name = "HardWiredSmokeDetectors")
	private Boolean hardWiredSmokeDetectors;
	
	@Column(name = "CarbonDioxideDetector")
	private Boolean carbonDioxideDetector;
	
	@Column(name = "FireExtinguisher")
	private Boolean fireExtinguisher;
	
	@Column(name = "ExteriorLighting")
	private Boolean exteriorLighting;
	
	@Column(name = "SafetyInspections")
	private Boolean safetyInspections;
	
	@Column(name = "SecurityAlarm")
	private Boolean securityAlarm;
	
	@Column(name = "SecurityCameras")
	private Boolean securityCameras;
	
	@Column(name = "SecurityGuard")
	private Boolean securityGuard;
	
	@Column(name = "GatedCommunity")
	private Boolean gatedCommunity;
	
	@Column(name = "Email")
	private String email;
	
	@Column(name = "ContactPhone")
	private String contactPhone;
	
	@Column(name = "Latitude")
	private Float latitude;
	
	@Column(name = "Longitude")
	private Float longitude;
	
	//Get functions for all variables
	public Integer getKeyId() {
		return keyId;
	}
	
	public Integer getOrgId() {
		return orgId;
	}
	
	public Integer getHousingId() {
		return housingId;
	}
	
	public String getHousingHeadline() {
		return housingHeadline;
	}
	
	public String getHousingType() {
		return housingType;
	}
	
	public Boolean getForSale() {
		return forSale;
	}
	
	public Boolean getWater() {
		return water;
	}
	
	public Boolean getHeat() {
		return heat;
	}
	
	public Boolean getElectricity() {
		return electricity;
	}
	
	public Boolean getGas() {
		return gas;
	}
	
	public Boolean getCable() {
		return cable;
	}
	
	public Boolean getPhone() {
		return phone;
	}
	
	public Boolean getTrash() {
		return trash;
	}
	
	public Integer getBedrooms() {
		return bedrooms;
	}
	
	public Integer getBathrooms() {
		return bathrooms;
	}
	
	public Boolean getSharedBathroom() {
		return sharedBathroom;
	}
	
	public Integer getWasherDryer() {
		return washerDryer;
	}
	
	public Boolean getFurnished() {
		return furnished;
	}
	
	public Integer getAirConditioned() {
		return airConditioned;
	}
	
	public Integer getPetsAllowed() {
		return petsAllowed;
	}
	
	public String getLease() {
		return lease;
	}
	
	public String getPreferences() {
		return preferences;
	}
	
	public Integer getPrice() {
		return price;
	}
	
	public Integer getDeposit() {
		return deposit;
	}
	
	public String getLocation() {
		return location;
	}
	
	public String getStreetAddress() {
		return streetAddress;
	}
	
	public String getComments() {
		return comments;
	}
	
	public String getFloorPlan() {
		return floorPlan;
	}
	
	public String getHousingPhoto() {
		return housingPhoto;
	}
	
	public Timestamp getCreateDate() {
		return createDate;
	}
	
	public Timestamp getPostingDate() {
		return postingDate;
	}
	
	public Timestamp getEditDate() {
		return editDate;
	}
	
	public Integer getActive() {
		return active;
	}
	
	public String getSiteUrl() {
		return siteUrl;
	}
	
	public Boolean getLockChanges() {
		return lockChanges;
	}
	
	public Boolean getDeadbolts() {
		return deadbolts;
	}
	
	public Boolean getPeepholes() {
		return peepholes;
	}
	
	public Boolean getBalconyLock() {
		return balconyLock;
	}
	
	public Boolean getExteriorLocks() {
		return exteriorLocks;
	}
	
	public Boolean getBatterySmokeDetectors() {
		return batterySmokeDetectors;
	}
	
	public Boolean getHardWiredSmokeDetectors() {
		return hardWiredSmokeDetectors;
	}
	
	public Boolean getCarbonDioxideDetector() {
		return carbonDioxideDetector;
	}
	
	public Boolean getFireExtinguisher() {
		return fireExtinguisher;
	}
	
	public Boolean getExteriorLighting() {
		return exteriorLighting;
	}
	
	public Boolean getSafetyInspections() {
		return safetyInspections;
	}
	
	public Boolean getSecurityAlarm() {
		return securityAlarm;
	}
	
	public Boolean getSecurityCameras() {
		return securityCameras;
	}
	
	public Boolean getSecurityGuard() {
		return securityGuard;
	}
	
	public Boolean getGatedCommunity() {
		return gatedCommunity;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getContactPhone() {
		return contactPhone;
	}
	
	public Float getLatitude() {
		return latitude;
	}
	
	public Float getLongitude() {
		return longitude;
	}
	
	//set function for all variables
	
	public void setKeyId(Integer keyId) {
		this.keyId = keyId;
	}
	
	public void setOrgId(Integer orgId) {
		this.orgId = orgId;
	}
	
	public void setHousingId(Integer housingId) {
		this.housingId = housingId;
	}
	
	public void setHousingHeadline(String housingHeadline) {
		this.housingHeadline = housingHeadline;
	}
	
	public void setHousingType(String housingType) {
		this.housingType = housingType;
	}
	
	public void setForSale(Boolean forSale) {
		this.forSale = forSale;
	}
	
	public void setWater(Boolean water) {
		this.water = water;
	}
	
	public void setHeat(Boolean heat) {
		this.heat = heat;
	}
	
	public void setElectricity(Boolean electricity) {
		this.electricity = electricity;
	}
	
	public void setGas(Boolean gas) {
		this.gas = gas;
	}
	
	public void setCable(Boolean cable) {
		this.cable = cable;
	}
	
	public void setPhone(Boolean phone) {
		this.phone = phone;
	}
	
	public void setTrash(Boolean trash) {
		this.trash = trash;
	}
	
	public void setBedrooms(Integer bedrooms) {
		this.bedrooms = bedrooms;
	}
	
	public void setBathrooms(Integer bathrooms) {
		this.bathrooms = bathrooms;
	}
	
	public void setSharedBathroom(Boolean sharedBathroom) {
		this.sharedBathroom = sharedBathroom;
	}
	
	public void setWasherDryer(Integer washerDryer) {
		this.washerDryer = washerDryer;
	}
	
	public void setFurnished(Boolean furnished) {
		this.furnished = furnished;
	}
	
	public void setAirConditioned(Integer airConditioned) {
		this.airConditioned = airConditioned;
	}
	
	public void setPetsAllowed(Integer petsAllowed) {
		this.petsAllowed = petsAllowed;
	}
	
	public void setLease(String lease) {
		this.lease = lease;
	}
	
	public void setPreferences(String preferences) {
		this.preferences = preferences;
	}
	
	public void setPrice(Integer price) {
		this.price = price;
	}
	
	public void setDeposit(Integer deposit) {
		this.deposit = deposit;
	}
	
	public void setLocation(String location) {
		this.location = location;
	}
	
	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}
	
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public void setFloorPlan(String floorPlan) {
		this.floorPlan = floorPlan;
	}
	
	public void setHousingPhoto(String housingPhoto) {
		this.housingPhoto = housingPhoto;
	}
	
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	
	public void setPostingDate(Timestamp postingDate) {
		this.postingDate = postingDate;
	}
	
	public void setEditDate(Timestamp editDate) {
		this.editDate = editDate;
	}
	
	public void setActive(Integer active) {
		this.active = active;
	}
	
	public void setSiteUrl(String siteUrl) {
		this.siteUrl = siteUrl;
	}
	
	public void setLockChanges(Boolean lockChanges) {
		this.lockChanges = lockChanges;
	}
	
	public void setDeadbolts(Boolean deadbolts) {
		this.deadbolts = deadbolts;
	}
	
	public void setPeepholes(Boolean peepholes) {
		this.peepholes = peepholes;
	}
	
	public void setBalconyLock(Boolean balconyLock) {
		this.balconyLock = balconyLock;
	}
	
	public void setExteriorLocks(Boolean exteriorLocks) {
		this.exteriorLocks = exteriorLocks;
	}
	
	public void setBatterySmokeDetectors(Boolean batterySmokeDetectors) {
		this.batterySmokeDetectors = batterySmokeDetectors;
	}
	
	public void setHardWiredSmokeDetectors(Boolean hardWiredSmokeDetectors) {
		this.hardWiredSmokeDetectors = hardWiredSmokeDetectors;
	}
	
	public void setCarbonDioxideDetector(Boolean carbonDioxideDetector) {
//		System.out.println("printing co detector");
//		System.out.println(carbonDioxideDetector);
		this.carbonDioxideDetector = carbonDioxideDetector;
	}
	
	public void setFireExtinguisher(Boolean fireExtinguisher) {
		this.fireExtinguisher = fireExtinguisher;
	}
	
	public void setExteriorLighting(Boolean exteriorLighting) {
		this.exteriorLighting = exteriorLighting;
	}
	
	public void setSafetyInspections(Boolean safetyInspections) {
		this.safetyInspections = safetyInspections;
	}
	
	public void setSecurityAlarm(Boolean securityAlarm) {
		this.securityAlarm = securityAlarm;
	}
	
	public void setSecurityCameras(Boolean securityCameras) {
		this.securityCameras = securityCameras;
	}
	
	public void setSecurityGuard(Boolean securityGuard) {
		this.securityGuard = securityGuard;
	}
	
	public void setGatedCommunity(Boolean gatedCommunity) {
		this.gatedCommunity = gatedCommunity;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	
	public void setLatitude(Float latitude) {
		this.latitude = latitude;
	}
	
	public void setLongitude(Float longitude) {
		this.longitude = longitude;
	}
	
}