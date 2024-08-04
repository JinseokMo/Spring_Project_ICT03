package com.mvc.spring_mvc_ict03_subway.service;

import java.util.ArrayList;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.google.gson.Gson;

import com.mvc.spring_mvc_ict03_subway.dao.AdminDAO;
import com.mvc.spring_mvc_ict03_subway.dao.AdminDAOImpl;
import com.mvc.spring_mvc_ict03_subway.dto.AdminDTO;
import com.mvc.spring_mvc_ict03_subway.dto.BoardDTO;
import com.mvc.spring_mvc_ict03_subway.dto.UserDTO;

@Service
public class AdminServiceImpl implements AdminService{
	
	@Autowired
	AdminDAOImpl dao;

	@Override
	public void adminLogin(HttpServletRequest request, HttpServletResponse response) {
		String email = request.getParameter("adminEmail");
		String pw = request.getParameter("adminPW");
		int resultNo = 0;
		
		AdminDTO dto =  dao.adminLoginAction(email, pw);				
		
		if(dto == null) {
			System.out.println("�떎�뙣�씈");
			request.setAttribute("resultNo", resultNo);
		}
		else {
			System.out.println("�꽦怨듬씈");
			resultNo = 1;
			request.setAttribute("resultNo", resultNo);
			HttpSession session = request.getSession();
			
			session.setAttribute("userDTO", dto);
		}
	}

	@Override
	public void adminUserList(HttpServletRequest request, HttpServletResponse response) {
		List<UserDTO> list = new ArrayList<UserDTO>();
		list = dao.adminUserList();
		System.out.println(list);
		request.setAttribute("list", list);
	}
	
	@Override
	public void adminUserListSearch(HttpServletRequest request, HttpServletResponse response) {
		List<UserDTO> list = new ArrayList<UserDTO>();
		String userEmail = request.getParameter("search");
		System.out.println(userEmail);
		list = dao.adminUserListSearch(userEmail);
		System.out.println(list);
		request.setAttribute("searchList", list);
		
	}
	
	public void adminUserDetail(HttpServletRequest request, HttpServletResponse response) {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		UserDTO dto = dao.adminUserDetail(userNo);
		
		request.setAttribute("userDTO", dto);
	}
	
	@Override
	public void adminUserHide(HttpServletRequest request, HttpServletResponse response) {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int hideRsult = dao.adminUserHide(userNo);
		request.setAttribute("hideRsult", hideRsult);
	}
	
	@Override
	public void adminUserHideList(HttpServletRequest request, HttpServletResponse response) {
		List<UserDTO> list = new ArrayList<UserDTO>();
		list = dao.adminUserHideList();
		System.out.println(list);
		request.setAttribute("hideList", list);
		
	}
	
	@Override
	public void adminUserHideListSearch(HttpServletRequest request, HttpServletResponse response) {
		List<UserDTO> list = new ArrayList<UserDTO>();
		String userEmail = request.getParameter("hideSearch");
		System.out.println(userEmail);
		list = dao.adminUserHideListSearch(userEmail);
		System.out.println(list);
		request.setAttribute("hideSearchList", list);
		
	}
	
	@Override
	public void adminUserHideClear(HttpServletRequest request, HttpServletResponse response) {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		
		int clrearRsult = dao.adminUserHideClear(userNo);
		request.setAttribute("clrearRsult", clrearRsult);
		
	}

	@Override
	public void adminMypagePWCheck(HttpServletRequest request, HttpServletResponse response) {
		String pw = request.getParameter("adminPW");
		String email = request.getParameter("adminEmail");
		int check = dao.adminMypagePWCheck(pw, email);
		
		System.out.println(check);
		request.setAttribute("check", check);
	}

	@Override
	public void adminUsernickNameCheck(HttpServletRequest request, HttpServletResponse response) {
		String nickName = request.getParameter("userNickname");
		System.out.println(nickName);
		
		int nickNameCheck = dao.adminUserNicknameCheck(nickName);
		request.setAttribute("nickNameCheck", nickNameCheck);
		
	}

	@Override
	public void adminUserProfileModify(HttpServletRequest request, HttpServletResponse response, String fileName) {
		int userNo = Integer.parseInt(request.getParameter("userNo"));
		String profile = fileName;
		int profileModify = dao.adminUserProfileModify(userNo, profile);
		
		request.setAttribute("profileModify", profileModify);
	}

	@Override
	public void adminBoardList(HttpServletRequest request, HttpServletResponse response) {
		List<BoardDTO> boardList = dao.adminBoardList();
		request.setAttribute("boardList", boardList);
		
	}

	@Override
	public void adminBoardListSearch(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("search");

		List<BoardDTO> boardSearch = dao.adminBoardListSearch(title);
		request.setAttribute("boardSearch", boardSearch);
	}

	@Override
	public void adminBoardBlind(HttpServletRequest request, HttpServletResponse response) {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));

		int blindRsult =  dao.adminBoardBlind(boardNo);
		request.setAttribute("blindRsult", blindRsult);
	}

	@Override
	public void adminUserBlindList(HttpServletRequest request, HttpServletResponse response) {

		List<BoardDTO> blindList = dao.adminBoardBlindList();
		request.setAttribute("blindList", blindList);
		
		
	}

	@Override
	public void adminBoardBlindClear(HttpServletRequest request, HttpServletResponse response) {
		int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		int blindClearRsult =  dao.adminBoardBlindClear(boardNo);
		request.setAttribute("blindClearRsult", blindClearRsult);
		System.out.println(blindClearRsult);
	}

	@Override
	public void adminBoardBlindListSearch(HttpServletRequest request, HttpServletResponse response) {
		String title = request.getParameter("search");
		List<BoardDTO> boardBlindSearch = dao.adminBoardBlindListSearch(title);
		request.setAttribute("boardBlindSearch", boardBlindSearch);
		
	}

	@Override
	public void adminGoogleChart(HttpServletRequest request, HttpServletResponse response) {
		Map<String, Integer> map = dao.adminGoogleChart();
		Gson gson = new Gson();
		String json = gson.toJson(map);
		
		
		request.setAttribute("jsonMap", json);
		
	}



	

	



}
