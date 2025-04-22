package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="security")

public class SecurityEntity {
 
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer securityId;
	private String Name;
	private Integer contactNumber;
	private Integer schedule;
	public Integer getSecurityId() {
		return securityId;
	}
	public void setSecurityId(Integer securityId) {
		this.securityId = securityId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public Integer getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(Integer contactNumber) {
		this.contactNumber = contactNumber;
	}
	public Integer getSchedule() {
		return schedule;
	}
	public void setSchedule(Integer schedule) {
		this.schedule = schedule;
	}
	
	
}
