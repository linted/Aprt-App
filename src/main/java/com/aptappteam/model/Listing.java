package com.aptappteam.model;

import java.math.BigDecimal;
 
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
	
	@Id
	@Column(name = "KeyID", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer keyId;
	
	@Column(name = "HousingID")
	private String housingId;
	
	@Column(name = "OrgID")
	private String orgId;
	
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
	private String bathrooms;
	
	@Column(name = "SharedBathroom")
	private Boolean sharedBathroom;
	
	@Column(name = "WasherDryer")
	private Integer washerDryer;
	
	@Column(name = "Furnished")
	private Boolean furnished;
	
	@Column(name = "AirConditioned")
	private Integer airConditioned;
	
	@Column(name = "PetsAllowed")
	private Boolean petsAllowed;
	
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
	
	@Column(name = "Comments")
	private String comments;
	
	@Column(name = "FloorPlan")
	private String floorPlan;
	
	@Column(name = "HousingPhoto")
	private String housingPhoto;
	
	@Column(name = "CreateDate")
	private String createDate;
	
	@Column(name = "PostingDate")
	private String postingDate;
	
	@Column(name = "EditDate")
	private String editDate;
	
	@Column(name = "Active", nullable=false)
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
	
	@Column(name = "CODetector")
	private Boolean coDetector;
	
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
	
	public Integer getKeyId() {
		return keyId;
	}
	
	public String getOrgId() {
		return orgId;
	}
	
	public String getHousingId() {
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
	
	public String getBathrooms() {
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
	
	public Boolean getPetsAllowed() {
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
	
	public String getComments() {
		return comments;
	}
	
	public String getFloorPlan() {
		return floorPlan;
	}
	
	public String getHousingPhoto() {
		return housingPhoto;
	}
	
	public String getCreateDate() {
		return createDate;
	}
	
	public String getPostingDate() {
		return postingDate;
	}
	
	public String getEditDate() {
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
	
	public Boolean getBSD() {
		return batterySmokeDetectors;
	}
	
	public Boolean getHWSD() {
		return hardWiredSmokeDetectors;
	}
	
	public Boolean getCOD() {
		return coDetector;
	}
	
	public Boolean getFireExt() {
		return fireExtinguisher;
	}
	
	public Boolean getExtLight() {
		return exteriorLighting;
	}
	
	public Boolean getSafetyInspec() {
		return safetyInspections;
	}
	
	public Boolean getSecurityAlarm() {
		return securityAlarm;
	}
	
	public Boolean getSecCameras() {
		return securityCameras;
	}
	
	public Boolean getSecGuard() {
		return securityGuard;
	}
	
	public Boolean getGated() {
		return gatedCommunity;
	}
	
	public void setKeyId(Integer keyId) {
		this.keyId = keyId;
	}
	
	public void setOrgId(String orgId) {
		this.orgId = orgId;
	}
	
	public void setHousingId(String housingId) {
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
	
	public void setBathrooms(String bathrooms) {
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
	
	public void setPetsAllowed(Boolean petsAllowed) {
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
	
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	public void setFloorPlan(String floorPlan) {
		this.floorPlan = floorPlan;
	}
	
	public void setHousingPhoto(String housingPhoto) {
		this.housingPhoto = housingPhoto;
	}
	
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	
	public void setPostingDate(String postingDate) {
		this.postingDate = postingDate;
	}
	
	public void setEditDate(String editDate) {
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
	
	public void setBSD(Boolean batterySmokeDetectors) {
		this.batterySmokeDetectors = batterySmokeDetectors;
	}
	
	public void setHWSD(Boolean hardWiredSmokeDetectors) {
		this.hardWiredSmokeDetectors = hardWiredSmokeDetectors;
	}
	
	public void setCOD(Boolean coDetector) {
		this.coDetector = coDetector;
	}
	
	public void setFireExt(Boolean fireExtinguisher) {
		this.fireExtinguisher = fireExtinguisher;
	}
	
	public void setExtLight(Boolean exteriorLighting) {
		this.exteriorLighting = exteriorLighting;
	}
	
	public void setSafetyInspec(Boolean safetyInspections) {
		this.safetyInspections = safetyInspections;
	}
	
	public void setSecurityAlarm(Boolean securityAlarm) {
		this.securityAlarm = securityAlarm;
	}
	
	public void setSecCameras(Boolean securityCameras) {
		this.securityCameras = securityCameras;
	}
	
	public void setSecGuard(Boolean securityGuard) {
		this.securityGuard = securityGuard;
	}
	
	public void setGated(Boolean gatedCommunity) {
		this.gatedCommunity = gatedCommunity;
	}
}