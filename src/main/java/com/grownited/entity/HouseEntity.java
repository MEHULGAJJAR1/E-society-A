package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="house")
public class HouseEntity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer HouseId;
	private String Title;
	public Integer getHouseId() {
		return HouseId;
	}
	public void setHouseId(Integer houseId) {
		HouseId = houseId;
	}
	public String getTitle() {
		return Title;
	}
	public void setTitle(String title) {
		Title = title;
	}
	
	

}
