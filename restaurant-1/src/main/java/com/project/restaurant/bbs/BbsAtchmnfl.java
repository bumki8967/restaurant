package com.project.restaurant.bbs;

import java.util.Date;

public class BbsAtchmnfl {

	/** 첨부파일 번호 */
	private int atchmnflSeq;
	
	/** 게시글 번호 */
	private int artclSeq;
	
	/** 작성자 */
	private String writer;
	
	/** 작성일자 */
	private Date regDate;
	
	/** 수정일자 */
	private Date editDate;
	
	/** 파일 원본 이름 */
	private String originNm;
	
	/** 파일 변경 이름 */
	private String fileNm;
	
	/** 파일 경로 */
	private String path;
	
	/** 구분 */
	private String type;
	
	private String addItem1;
	private String addItem2;
	private String addItem3;
	private String addItem4;
	private String addItem5;
	public int getAtchmnflSeq() {
		return atchmnflSeq;
	}
	public void setAtchmnflSeq(int atchmnflSeq) {
		this.atchmnflSeq = atchmnflSeq;
	}
	public int getArtclSeq() {
		return artclSeq;
	}
	public void setArtclSeq(int artclSeq) {
		this.artclSeq = artclSeq;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Date getEditDate() {
		return editDate;
	}
	public void setEditDate(Date editDate) {
		this.editDate = editDate;
	}
	public String getOriginNm() {
		return originNm;
	}
	public void setOriginNm(String originNm) {
		this.originNm = originNm;
	}
	public String getFileNm() {
		return fileNm;
	}
	public void setFileNm(String fileNm) {
		this.fileNm = fileNm;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAddItem1() {
		return addItem1;
	}
	public void setAddItem1(String addItem1) {
		this.addItem1 = addItem1;
	}
	public String getAddItem2() {
		return addItem2;
	}
	public void setAddItem2(String addItem2) {
		this.addItem2 = addItem2;
	}
	public String getAddItem3() {
		return addItem3;
	}
	public void setAddItem3(String addItem3) {
		this.addItem3 = addItem3;
	}
	public String getAddItem4() {
		return addItem4;
	}
	public void setAddItem4(String addItem4) {
		this.addItem4 = addItem4;
	}
	public String getAddItem5() {
		return addItem5;
	}
	public void setAddItem5(String addItem5) {
		this.addItem5 = addItem5;
	}
	
	@Override
	public String toString() {
		return "BbsAtchmnfl [atchmnflSeq=" + atchmnflSeq + ", artclSeq=" + artclSeq + ", writer=" + writer
				+ ", regDate=" + regDate + ", editDate=" + editDate + ", originNm=" + originNm + ", fileNm=" + fileNm
				+ ", path=" + path + ", type=" + type + ", addItem1=" + addItem1 + ", addItem2=" + addItem2
				+ ", addItem3=" + addItem3 + ", addItem4=" + addItem4 + ", addItem5=" + addItem5 + "]";
	}
	
	
	
}
