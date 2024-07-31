package com.mvc.spring_mvc_ict03_subway.dto;

import java.sql.Date;

public class BoardCommentDTO {
	private int commentNo;
	private int boardNo;
	private int userNo;
	private String userNickname;
	private String commentContent;
	private Date writeDate;
	
	public BoardCommentDTO() {}
	
	
	
	public BoardCommentDTO(int commentNo, int boardNo, int userNo, String userNickname, String commentContent,
			Date writeDate) {
		super();
		this.commentNo = commentNo;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.userNickname = userNickname;
		this.commentContent = commentContent;
		this.writeDate = writeDate;
	}



	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getBoardNo() {
		return boardNo;
	}

	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
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

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}



	@Override
	public String toString() {
		return "BoardCommentDTO [commentNo=" + commentNo + ", boardNo=" + boardNo + ", userNo=" + userNo
				+ ", userNickname=" + userNickname + ", commentContent=" + commentContent + ", writeDate=" + writeDate
				+ "]";
	}
	
	
}
