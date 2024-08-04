package com.mvc.spring_mvc_ict03_subway.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mvc.spring_mvc_ict03_subway.fileUpload.UserProfileUpload;
import com.mvc.spring_mvc_ict03_subway.service.AdminServiceImpl;

@Controller
public class AdminController {
	
	@Autowired
	AdminServiceImpl adminService;
	
	@RequestMapping("adminLogin.ad")
	public String adminLogin(HttpServletRequest request, HttpServletResponse response) {
		return "admin/adminLoginPage";
	}
	
	@RequestMapping("adminLoginAction.ad")
	public String adminLoginAction(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminLogin(request, response);
		return "admin/adminLoginAction";
	}
	
	@RequestMapping("adminPageHome.ad")
	public String adminPageHome(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminGoogleChart(request, response);
		return "admin/adminPageHome";
	}
	
	@RequestMapping("adminLogout.ad")
	public String adminLogout(HttpServletRequest request, HttpServletResponse response) {
		request.getSession().invalidate();
		return "admin/adminLoginPage";
	}
	
	@RequestMapping("userListAuthority.ad")
	public String userListAuthority(HttpServletRequest request, HttpServletResponse response) {
		return "admin/userManagement/adminUserListAuthorityCheck";
	}
	
	@RequestMapping("userList.ad")
	public String userList(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserList(request, response);
		return "admin/userManagement/adminUserList";
	}
	
	@RequestMapping("userListSearch.ad")
	public String userListSearch(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserListSearch(request, response);
		return "admin/userManagement/adminUserSearchList";
	}
	
	@RequestMapping("userDetail.ad")
	public String userDetail(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserDetail(request, response);
		return "admin/userManagement/adminUserDetail";
	}
	
	@RequestMapping("adminUserHide.ad")
	public String adminUserHide(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserHide(request, response);
		return "admin/userManagement/adminUserHideAction";
	}
	
	@RequestMapping("adminUserHideList.ad")
	public String adminUserHideList(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminLogin(request, response);
		return "admin/userManagement/adminUserHideList";
	}
	
	@RequestMapping("userHideListSearch.ad")
	public String userHideListSearch(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserHideListSearch(request, response);
		return "admin/userManagement/adminUserHideSearchList";
	}
	
	@RequestMapping("userHideClear.ad")
	public String userHideClear(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserHideClear(request, response);
		return "admin/userManagement/adminUserHideClearAction";
	}
	
	@RequestMapping("adminMypage.ad")
	public String adminMypage(HttpServletRequest request, HttpServletResponse response) {
		
		return "admin/myPage/adminMypage";
	}
	
	@RequestMapping("adminMypagePWCheck.ad")
	public String adminMypagePWCheck(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminMypagePWCheck(request, response);
		return "admin/myPage/adminPageCheck";
	}
	
	@RequestMapping("adminModify.ad")
	public String adminModify(HttpServletRequest request, HttpServletResponse response) {

		return "admin/myPage/adminModify";
	}
	
	@RequestMapping("adminUserNickNameCheck.ad")
	public String adminUserNickNameCheck(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUsernickNameCheck(request, response);
		return "admin/userManagement/adminUserNickCheck";
	}
	
	@RequestMapping("adminUserProfileModify.ad")
	public String adminUserProfileModify(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UserProfileUpload profile = new UserProfileUpload();
		String name = profile.userProfileUproad(request, response);
		adminService.adminUserProfileModify(request, response, name);
		return "admin/userManagement/adminUserProfileModifyAction";
	}
	
	@RequestMapping("boardList.ad")
	public String boardList(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardList(request, response);
		return "admin/boardManagement/adminBoardList";
	}
	
	@RequestMapping("boardListSearch.ad")
	public String boardListSearch(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardListSearch(request, response);
		return "admin/boardManagement/adminBoardSearchList";
	}
	
	@RequestMapping("boardBlind.ad")
	public String boardBlind(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardBlind(request, response);
		return "admin/boardManagement/adminBoardBlindActione";
	}
	
	@RequestMapping("boardBlindList.ad")
	public String boardBlindList(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminUserBlindList(request, response);
		return "admin/boardManagement/adminBoardBlindList";
	}
	
	@RequestMapping("boardBlindClear.ad")
	public String boardBlindClear(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardBlindClear(request, response);
		return "admin/boardManagement/adminBoardBlindClearAction";
	}
	
	@RequestMapping("adminBoardBlindClearAction.ad")
	public String adminBoardBlindClearAction(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardBlindListSearch(request, response);
		return "admin/boardManagement/adminBoardBlindClearAction";
	}
	
	@RequestMapping("boardBlindListSearch.ad")
	public String boardBlindListSearch(HttpServletRequest request, HttpServletResponse response) {
		adminService.adminBoardBlindListSearch(request, response);
		return "admin/boardManagement/adminBoardBlindSearchList";
	}
	
	
}
