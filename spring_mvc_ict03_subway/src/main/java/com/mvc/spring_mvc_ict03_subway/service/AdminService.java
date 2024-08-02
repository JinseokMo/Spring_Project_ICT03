package com.mvc.spring_mvc_ict03_subway.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface AdminService {
	
	public void adminLogin(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserList(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserListSearch(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserDetail(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserProfileModify(HttpServletRequest request, HttpServletResponse response, String fileName);
	
	public void adminUsernickNameCheck(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserHide(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserHideList(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserHideListSearch(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserHideClear(HttpServletRequest request, HttpServletResponse response);
	
	public void adminMypagePWCheck(HttpServletRequest request, HttpServletResponse response);
	
	public void adminBoardList(HttpServletRequest request, HttpServletResponse response);
	
	public void adminBoardListSearch(HttpServletRequest request, HttpServletResponse response);
	
	public void adminBoardBlind(HttpServletRequest request, HttpServletResponse response);
	
	public void adminUserBlindList(HttpServletRequest request, HttpServletResponse response);
	
	public void adminBoardBlindClear(HttpServletRequest request, HttpServletResponse response);
	
	public void adminBoardBlindListSearch(HttpServletRequest request, HttpServletResponse response);
	
	public void adminGoogleChart(HttpServletRequest request, HttpServletResponse response);
	
}
