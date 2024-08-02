package com.mvc.spring_mvc_ict03_subway.dao;

import java.util.List;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.spring_mvc_ict03_subway.dto.AdminDTO;
import com.mvc.spring_mvc_ict03_subway.dto.BoardDTO;
import com.mvc.spring_mvc_ict03_subway.dto.UserDTO;


public interface AdminDAO {
	
	public AdminDTO adminLoginAction(String email, String pw);
	
	public List<UserDTO> adminUserList();
	
	public List<UserDTO> adminUserListSearch(String userEmail);
	
	public UserDTO adminUserDetail(int userNo);
	
	public int adminUserProfileModify(int userNo, String profile);
	
	public int adminUserNicknameCheck(String nickName);
	
	public int adminUserHide(int userNo);
	
	public List<UserDTO> adminUserHideList();
	
	public List<UserDTO> adminUserHideListSearch(String userEmail);
	
	public int adminUserHideClear(int userNo);
	
	public int adminMypagePWCheck(String pw, String email);
	
	public List<BoardDTO> adminBoardList();
	
	public List<BoardDTO> adminBoardListSearch(String boardTitle);
	
	public int adminBoardBlind(int boardNo);
	
	public List<BoardDTO> adminBoardBlindList();
	
	public int adminBoardBlindClear(int boardNo);
	
	public List<BoardDTO> adminBoardBlindListSearch(String boardTitle);
	
	public Map<String, Integer> adminGoogleChart();
}
