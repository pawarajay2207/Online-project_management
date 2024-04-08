package com.project.web.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "Projects")
public class Project {
	@Id
	@GeneratedValue (strategy = GenerationType.AUTO)
    private int P_id;
	private String ProjectName;
	private String Reason;
	private String Type;
	private String Division;
	private String Category;
	private String Priority;
	private String Department;
	private  String Startdate;
	private  String Enddate;
	private String Location;
	private String Status;
	public Project() {
		
	}
	public Project(int p_id, String projectName, String reason, String type, String division, String category,
			String priority, String department, String startdate, String enddate, String location, String status) {
		super();
		P_id = p_id;
		ProjectName = projectName;
		Reason = reason;
		Type = type;
		Division = division;
		Category = category;
		Priority = priority;
		Department = department;
		Startdate = startdate;
		Enddate = enddate;
		Location = location;
		Status = status;
	}
	public int getP_id() {
		return P_id;
	}
	public void setP_id(int p_id) {
		P_id = p_id;
	}
	public String getProjectName() {
		return ProjectName;
	}
	public void setProjectName(String projectName) {
		ProjectName = projectName;
	}
	public String getReason() {
		return Reason;
	}
	public void setReason(String reason) {
		Reason = reason;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public String getDivision() {
		return Division;
	}
	public void setDivision(String division) {
		Division = division;
	}
	public String getCategory() {
		return Category;
	}
	public void setCategory(String category) {
		Category = category;
	}
	public String getPriority() {
		return Priority;
	}
	public void setPriority(String priority) {
		Priority = priority;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public String getStartdate() {
		return Startdate;
	}
	public void setStartdate(String startdate) {
		Startdate = startdate;
	}
	public String getEnddate() {
		return Enddate;
	}
	public void setEnddate(String enddate) {
		Enddate = enddate;
	}
	public String getLocation() {
		return Location;
	}
	public void setLocation(String location) {
		Location = location;
	}
	public String getStatus() {
		return Status;
	}
	public void setStatus(String status) {
		Status = status;
	}
	@Override
	public String toString() {
		return "Project [P_id=" + P_id + ", ProjectName=" + ProjectName + ", Reason=" + Reason + ", Type=" + Type
				+ ", Division=" + Division + ", Category=" + Category + ", Priority=" + Priority + ", Department="
				+ Department + ", Startdate=" + Startdate + ", Enddate=" + Enddate + ", Location=" + Location
				+ ", Status=" + Status + "]";
	}
	
	
	
}
