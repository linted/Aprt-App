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
	private Integer keyId;
	
	@Column(name = "HousingHeadline")
	private String housingHeadline;
	
	@Column(name = "Bedrooms")
	private Integer bedrooms;
	
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
	
	@Column(name = "Lease")
	private String lease;
	
	@Column(name = "Price")
	private Integer price;
	
	@Column(name = "Location")
	private String location;
	
	@Column(name = "Active")
	private Integer active;
	
	public Integer getKeyId() {
		return keyId;
	}
	
	public String getHousingHeadline() {
		return housingHeadline;
	}
	
	public Integer getBedrooms() {
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
	
	public String getLease() {
		return lease;
	}
	
	public Integer getPrice() {
		return price;
	}
	
	public String getLocation() {
		return location;
	}
	
	public Integer getActive() {
		return active;
	}
}