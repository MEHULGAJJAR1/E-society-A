package com.grownited.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "visitor")
public class VisitorEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer visitorId;
	private String visiterName;
	private String contactNum;
	private String idProof;
	private String idProofNum;
	private String purpose;
	private String flatNum;
	private String numVisitor;
	private String remark;
	private Integer date;
	public Integer getVisitorId() {
		return visitorId;
	}
	public void setVisitorId(Integer visitorId) {
		this.visitorId = visitorId;
	}
	public String getVisiterName() {
		return visiterName;
	}
	public void setVisiterName(String visiterName) {
		this.visiterName = visiterName;
	}
	public String getContactNum() {
		return contactNum;
	}
	public void setContactNum(String contactNum) {
		this.contactNum = contactNum;
	}
	public String getIdProof() {
		return idProof;
	}
	public void setIdProof(String idProof) {
		this.idProof = idProof;
	}
	public String getIdProofNum() {
		return idProofNum;
	}
	public void setIdProofNum(String idProofNum) {
		this.idProofNum = idProofNum;
	}
	public String getPurpose() {
		return purpose;
	}
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}
	public String getFlatNum() {
		return flatNum;
	}
	public void setFlatNum(String flatNum) {
		this.flatNum = flatNum;
	}
	public String getNumVisitor() {
		return numVisitor;
	}
	public void setNumVisitor(String numVisitor) {
		this.numVisitor = numVisitor;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getDate() {
		return date;
	}
	public void setDate(Integer date) {
		this.date = date;
	}
	
	
}
