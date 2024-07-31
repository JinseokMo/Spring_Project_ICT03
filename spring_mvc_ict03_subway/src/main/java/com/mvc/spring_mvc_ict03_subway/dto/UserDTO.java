package com.mvc.spring_mvc_ict03_subway.dto;

import java.sql.Date;

public class UserDTO {
	private int userNo;
	private String userEmail;
	private String userPW;
	private String userHP;
	private String lastName;
	private String firstName;
	private String userNickname;
	private Date userBirth;
	private String userCountry;
	private String userProfile;
	private char show;
	private String grade;
	
	public UserDTO () {}

	public UserDTO(int userNo, String userEmail, String userPW, String userHP, String lastName, String firstName,
			String userNickname, Date userBirth, String userCountry, String userProfile, char show, String grade) {
		super();
		this.userNo = userNo;
		this.userEmail = userEmail;
		this.userPW = userPW;
		this.userHP = userHP;
		this.lastName = lastName;
		this.firstName = firstName;
		this.userNickname = userNickname;
		this.userBirth = userBirth;
		this.userCountry = userCountry;
		this.userProfile = userProfile;
		this.show = show;
		this.grade = grade;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPW() {
		return userPW;
	}

	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}

	public String getUserHP() {
		return userHP;
	}

	public void setUserHP(String userHP) {
		this.userHP = userHP;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public Date getUserBirth() {
		return userBirth;
	}

	public void setUserBirth(Date userBirth) {
		this.userBirth = userBirth;
	}

	public String getUserCountry() {
		return userCountry;
	}

	public void setUserCountry(String userCountry) {
		this.userCountry = userCountry;
	}

	public String getUserProfile() {
		return userProfile;
	}

	public void setUserProfile(String userProfile) {
		this.userProfile = userProfile;
	}

	public char getShow() {
		return show;
	}

	public void setShow(char show) {
		this.show = show;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	@Override
	public String toString() {
		return "UserDTO [userNo=" + userNo + ", userEmail=" + userEmail + ", userPW=" + userPW + ", userHP=" + userHP
				+ ", lastName=" + lastName + ", firstName=" + firstName + ", userNickname=" + userNickname
				+ ", userBirth=" + userBirth + ", userCountry=" + userCountry + ", userProfile=" + userProfile
				+ ", show=" + show + ", grade=" + grade + "]";
	}
	
	
	
	
}
