package com.aptappteam.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HousingOffCampus")
public class SubListing {
	@Id
	@Column(name = "KeyID", nullable = false)
	private String keyId;
	
	@Column(name = "OrgID")
	private Integer orgId;
	
	@Column(name = "HousingHeadline")
	private String housingHeadline;
	
	@Column(name = "HousingType")
	private String housingType;
	
	@Column(name = "ForSale")
	private String forSale;
	
	@Column(name = "Bedrooms")
	private String bedrooms;
	
	@Column(name = "Bathrooms")
	private String bathrooms;
	
	@Column(name = "WasherDryer")
	private Integer washerDryer;
	
	@Column(name = "Furnished")
	private Boolean furnished;
	
	@Column(name = "AirConditioned")
	private Integer airConditioned;
	
	@Column(name = "PetsAllowed")
	private Boolean petsAllowed;
	
	@Column(name = "Price")
	private Integer price;
	
	@Column(name = "Lease")
	private String lease;
	
	@Column(name = "Deposit")
	private Boolean deposit;
	
	@Column(name = "Location")
	private String location;
	
	@Column(name = "Active")
	private Integer active;
	
	@Column(name = "Latitude")
	private Float latitude;
	
	@Column(name = "Longitude")
	private Float longitude;
	
	public String getKeyId() {
		return keyId;
	}
	
	public Integer getOrgId() {
		return orgId;
	}
	
	public String getHousingHeadline() {
		return housingHeadline;
	}
	
	public String getHousingType() {
		return housingType;
	}
	
	public String getForSale() {
		return forSale;
	}
	
	public String getBedrooms() {
		return bedrooms;
	}
	
	public String getBathrooms() {
		return bathrooms;
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
	
	public Integer getPrice() {
		return price;
	}
	
	public String getLease() {
		return lease;
	}
	
	public Boolean getDeposit() {
		return deposit;
	}
	
	public String getLocation() {
		return location;
	}
	
	public Integer getActive() {
		return active;
	}
	
	public Float getLatitude() {
		return latitude;
	}
	
	public Float getLongitude() {
		return longitude;
	}
}