package com.mvc.spring_mvc_ict03_subway.dto;

public class LikeDTO {
	private int likeNo;
    private int boardNo; 
    private int userNo;
    private char likeCheck;
    
    public LikeDTO() {}
    
	public LikeDTO(int likeNo, int boardNo, int userNo, char likeCheck) {
		super();
		this.likeNo = likeNo;
		this.boardNo = boardNo;
		this.userNo = userNo;
		this.likeCheck = likeCheck;
	}

	public int getLikeNo() {
		return likeNo;
	}

	public void setLikeNo(int likeNo) {
		this.likeNo = likeNo;
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

	public char getLikeCheck() {
		return likeCheck;
	}

	public void setLikeCheck(char likeCheck) {
		this.likeCheck = likeCheck;
	}

	@Override
	public String toString() {
		return "LikeDTO [likeNo=" + likeNo + ", boardNo=" + boardNo + ", userNo=" + userNo + ", likeCheck=" + likeCheck
				+ "]";
	}
	
	
    
    
}
