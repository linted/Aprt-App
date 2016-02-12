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
	@Column(name = "HousingID", nullable = false)
	private String id;
	
	@Column(name = "HousingHeadline")
	private String headline;
	
	@Column(name = "Lease")
	private String lease;
	
	@Column(name = "Price")
	private String price;
	
	public String getId() {
		return id;
	}
	
	public String getHeadline() {
		return headline;
	}
	
	public String getLease() {
		return lease;
	}
	
	public String getPrice() {
		return price;
	}
}