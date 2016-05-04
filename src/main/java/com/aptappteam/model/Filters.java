/*This class is the model for filters to filter the search results*/

package com.aptappteam.model;

public class Filters {

	//Variable declaration
	private String housingType;
	
	private Boolean forSale;
	
	private Boolean lease;
	
	private Utilities utils;
	
	private String bedrooms;
	
	private String bathrooms;
	
	private String washerDryer;
	
	private Boolean furnished;
	
	private String petsAllowed;
	
	private String depositPrice;

	//get and set functions for all variables
	public String getDepositPrice() {
		return depositPrice;
	}

	public void setDepositPrice(String depositPrice) {
		this.depositPrice = depositPrice;
	}

	public String getPetsAllowed() {
		return petsAllowed;
	}

	public void setPetsAllowed(String petsAllowed) {
		this.petsAllowed = petsAllowed;
	}

	public Boolean getFurnished() {
		return furnished;
	}

	public void setFurnished(Boolean furnished) {
		this.furnished = furnished;
	}

	public String getWasherDryer() {
		return washerDryer;
	}

	public void setWasherDryer(String washerDryer) {
		this.washerDryer = washerDryer;
	}

	public String getBathrooms() {
		return bathrooms;
	}

	public void setBathrooms(String bathrooms) {
		this.bathrooms = bathrooms;
	}

	public String getBedrooms() {
		return bedrooms;
	}

	public void setBedrooms(String bedrooms) {
		this.bedrooms = bedrooms;
	}

	public Utilities getUtils() {
		return utils;
	}

	public void setUtils(Utilities utils) {
		this.utils = utils;
	}

	public Boolean getLease() {
		return lease;
	}

	public void setLease(Boolean lease) {
		this.lease = lease;
	}

	public Boolean getForSale() {
		return forSale;
	}

	public void setForSale(Boolean forSale) {
		this.forSale = forSale;
	}

	public String getHousingType() {
		return housingType;
	}

	public void setHousingType(String housingType) {
		this.housingType = housingType;
	}
}