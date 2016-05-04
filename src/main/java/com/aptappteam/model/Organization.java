/*
This class is the model containing everything for an Organization pulled from the database.
Original Author: Joe Moyer
Original Creation Date: 5/3/16
Dev Team: Kyle Erikson, Mike Merrill, Joe Moyer
*/


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
@Table(name="HousingOffCampusOrgMaster")
public class Organization {
	
	
	//Variable declarations
	@Id
	@Column(name = "OrgID", nullable = false)
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Integer orgID;
	
	@Column(name = "ContactFName")
	private String contactFName;
	
	@Column(name = "ContactLName")
	private String contactLName;
	
	@Column(name = "DisplayName")
	private String displayName;
	
	@Column(name = "ContactEmail")
	private String contactEmail;
	
	@Column(name = "DisplayEmail")
	private Boolean displayEmail;
	
	@Column(name = "ContactPhone")
	private String contactPhone;
	
	@Column(name = "Username")
	private String username;
	
	@Column(name = "CreateDate")
	private Timestamp createDate;
	
	@Column(name = "EditDate")
	private Timestamp editDate;
	
	@Column(name = "Active")
	private Integer active;
	
	@Column(name = "ContactLuid")
	private String contactLuid;
	
	
	//get functions
	public Integer getOrgID() {
		return orgID;
	}
	
	public String getContactFName(){
		return contactFName;
	}
	
	public String getContactLName(){
		return contactLName;
	}
	
	public String getDisplayName(){
		return displayName;
	}
	
	public String getContactEmail(){
		return contactEmail;
	}
	
	public Boolean getDisplayEmail(){
		return displayEmail;
	}
	
	public String getContactPhone(){
		return contactPhone;
	}
	
	public String getUsername(){
		return username;
	}
	
	public Timestamp getCreateDate() {
		return createDate;
	}
	
	public Timestamp getEditDate() {
		return editDate;
	}
	
	public Integer getActive() {
		return active;
	}
	
	public String getContactLuid(){
		return contactLuid;
	}
	
	//set functions
	public void setOrgID(Integer orgID) {
		this.orgID = orgID;
	}
	
	public void setContactFName(String contactFName) {
		this.contactFName = contactFName;
	}
	
	public void setContactLName(String contactLName) {
		this.contactLName = contactLName;
	}
	
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	
	public void setContactEmail(String contactEmail) {
		this.contactEmail = contactEmail;
	}
	
	public void setDisplayEmail(Boolean displayEmail) {
		this.displayEmail = displayEmail;
	}
	
	public void setContactPhone(String contactPhone) {
		this.contactPhone = contactPhone;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setCreateDate(Timestamp createDate) {
		this.createDate = createDate;
	}
	
	public void setEditDate(Timestamp editDate) {
		this.editDate = editDate;
	}
	
	public void setActive(Integer active) {
		this.active = active;
	}
	
	public void setContactLuid(String contactLuid) {
		this.contactLuid = contactLuid;
	}
	
}