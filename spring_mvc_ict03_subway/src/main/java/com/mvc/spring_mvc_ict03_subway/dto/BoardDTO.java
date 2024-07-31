package com.mvc.spring_mvc_ict03_subway.dto;

import java.sql.Date;

public class BoardDTO {
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int userNo;
	private String userNickname;
	private Date boardWriteDate;
	private Date boardModifyDate;
	private String userImg1;
	private String userImg2;
	private String userImg3;
	private String userImg4;
	private String userImg5;
	private String show;
	private int likeNo;
	private int viewCount;
	
	public BoardDTO () {}

	public BoardDTO(int boardNo, String boardTitle, String boardContent, int userNo, String userNickname,
			Date boardWriteDate, Date boardModifyDate, String userImg1, String userImg2, String userImg3,
			String userImg4, String userImg5, String show, int likeNo, int viewCount) {
		super();
		this.boardNo = boardNo;
		this.boardTitle = boardTitle;
		this.boardContent = boardContent;
		this.userNo = userNo;
		this.userNickname = userNickname;
		this.boardWriteDate = boardWriteDate;
		this.boardModifyDate = boardModifyDate;
		this.userImg1 = userImg1;
		this.userImg2 = userImg2;
		this.userImg3 = userImg3;
		this.userImg4 = userImg4;
		this.userImg5 = userImg5;
		this.show = show;
		this.likeNo = likeNo;
		this.viewCount = viewCount;
	}



	public String getShow() {
		return show;
	}

	public void setShow(String show) {
		this.show = show;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}

	public String getBoardTitle() {
		return boardTitle;
	}

	public void setBoardTitle(String boardTitle) {
		this.boardTitle = boardTitle;
	}

	public String getBoardContent() {
		return boardContent;
	}

	public void setBoardContent(String boardContent) {
		this.boardContent = boardContent;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}

	public String getUserNickname() {
		return userNickname;
	}

	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}

	public Date getBoardWriteDate() {
		return boardWriteDate;
	}

	public void setBoardWriteDate(Date boardWriteDate) {
		this.boardWriteDate = boardWriteDate;
	}

	public Date getBoardModifyDate() {
		return boardModifyDate;
	}

	public void setBoardModifyDate(Date boardModifyDate) {
		this.boardModifyDate = boardModifyDate;
	}

	public String getUserImg1() {
		return userImg1;
	}

	public void setUserImg1(String userImg1) {
		this.userImg1 = userImg1;
	}

	public String getUserImg2() {
		return userImg2;
	}

	public void setUserImg2(String userImg2) {
		this.userImg2 = userImg2;
	}

	public String getUserImg3() {
		return userImg3;
	}

	public void setUserImg3(String userImg3) {
		this.userImg3 = userImg3;
	}

	public String getUserImg4() {
		return userImg4;
	}

	public void setUserImg4(String userImg4) {
		this.userImg4 = userImg4;
	}

	public String getUserImg5() {
		return userImg5;
	}

	public void setUserImg5(String userImg5) {
		this.userImg5 = userImg5;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
	}

	public int getViewCount() {
		return viewCount;
	}

	public void setViewCount(int viewCount) {
		this.viewCount = viewCount;
	}

	@Override
	public String toString() {
		return "BoardDTO [boardNo=" + boardNo + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent
				+ ", userNo=" + userNo + ", userNickname=" + userNickname + ", boardWriteDate=" + boardWriteDate
				+ ", boardModifyDate=" + boardModifyDate + ", userImg1=" + userImg1 + ", userImg2=" + userImg2
				+ ", userImg3=" + userImg3 + ", userImg4=" + userImg4 + ", userImg5=" + userImg5 + ", show=" + show
				+ ", likeNo=" + likeNo + ", viewCount=" + viewCount + "]";
	}

	
}
