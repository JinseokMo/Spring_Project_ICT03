package com.mvc.spring_mvc_ict03_subway.dao;


import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.spring_mvc_ict03_subway.dto.AdminDTO;
import com.mvc.spring_mvc_ict03_subway.dto.BoardDTO;
import com.mvc.spring_mvc_ict03_subway.dto.UserDTO;


@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public AdminDTO adminLoginAction(String email, String pw) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("email", email);
		map.put("pw", pw);
		
		AdminDTO dto = sqlSession.selectOne("com.mvc.spring_mvc_ict03_subway.dao.AdminDAO.adminLoginAction", map);
		
		
		return dto;
	}

	@Override
	public List<UserDTO> adminUserList() {
		List<UserDTO> list = sqlSession.selectList("com.mvc.spring_mvc_ict03_subway.dao.AdminDAO.adminUserList");
		return list;
	}

	@Override
	public List<UserDTO> adminUserListSearch(String userEmail) {
		List<UserDTO> list = sqlSession.selectList("spring_mvc_ict03_subway.dao.AdminDAO.adminUserListSearch");
		return null;
	}

	@Override
	public UserDTO adminUserDetail(int userNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int adminUserProfileModify(int userNo, String profile) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int adminUserNicknameCheck(String nickName) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int adminUserHide(int userNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<UserDTO> adminUserHideList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<UserDTO> adminUserHideListSearch(String userEmail) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int adminUserHideClear(int userNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int adminMypagePWCheck(String pw, String email) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardDTO> adminBoardList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<BoardDTO> adminBoardListSearch(String boardTitle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int adminBoardBlind(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardDTO> adminBoardBlindList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int adminBoardBlindClear(int boardNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<BoardDTO> adminBoardBlindListSearch(String boardTitle) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Map<String, Integer> adminGoogleChart() {
		// TODO Auto-generated method stub
		return null;
	}


}