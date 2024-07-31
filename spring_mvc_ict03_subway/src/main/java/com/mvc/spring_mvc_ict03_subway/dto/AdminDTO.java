package com.mvc.spring_mvc_ict03_subway.dto;

public class AdminDTO {
	private int adminNo;
	private String adminEmail;
	private String adminPW;
	private String adminName;
	private String adminGrade;
	
	public AdminDTO() {};
	
	public AdminDTO(int adminNo, String adminEmail, String adminPW, String adminName, String adminGrade) {
		super();
		this.adminNo = adminNo;
		this.adminEmail = adminEmail;
		this.adminPW = adminPW;
		this.adminName = adminName;
		this.adminGrade = adminGrade;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	public String getAdminEmail() {
		return adminEmail;
	}

	public void setAdminEmail(String adminEmail) {
		this.adminEmail = adminEmail;
	}

	public String getAdminPW() {
		return adminPW;
	}

	public void setAdminPW(String adminPW) {
		this.adminPW = adminPW;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminGrade() {
		return adminGrade;
	}

	public void setAdminGrade(String adminGrade) {
		this.adminGrade = adminGrade;
	}

	@Override
	public String toString() {
		return "AdminDTO [adminNo=" + adminNo + ", adminEmail=" + adminEmail + ", adminPW=" + adminPW + ", adminName="
				+ adminName + ", adminGrade=" + adminGrade + "]";
	}
	
	
	
}
