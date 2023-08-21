package com.project.restaurant.bbs;

import java.util.Date;

public class BbsArtcl {

	/** 게시글 번호 */
	private int artclSeq;
	
	/** 제목 */
	private String title;
	
	/** 내용 */
	private String content;
	
	/** 작성자 */
	private String writer;
	
	/** 등록일자 */
	private Date regDate;
	
	/** 수정일자 */
	private Date editDate;
	
	/** 조회수 */
	private String hit;
	
	/** 이미지 파일 원본 이름 */
	private String imgOriginNm;
	
	/** 이미지 파일 변경 이름 */
	private String imgFileNm;
	
	/** 이미지 경로 */
	private String imgPath;
	
	/** 게시판 구분 */
	private String type;
	
	/** 작성자 IP */
	private String ip;
	
	private String addItem1;
	private String addItem2;
	private String addItem3;
	private String addItem4;
	private String addItem5;
	
	public int getArtclSeq() {
		return artclSeq;
	}
	public void setArtclSeq(int artclSeq) {
		this.artclSeq = artclSeq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getImgOriginNm() {
		return imgOriginNm;
	}
	public void setImgOriginNm(String imgOriginNm) {
		this.imgOriginNm = imgOriginNm;
	}
	public String getImgFileNm() {
		return imgFileNm;
	}
	public void setImgFileNm(String imgFileNm) {
		this.imgFileNm = imgFileNm;
	}
	public String getImgPath() {
		return imgPath;
	}
	public void setImgPath(String imgPath) {
		this.imgPath = imgPath;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
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
		return "BbsArtcl [artclSeq=" + artclSeq + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", regDate=" + regDate + ", editDate=" + editDate + ", hit=" + hit + ", imgOriginNm=" + imgOriginNm
				+ ", imgFileNm=" + imgFileNm + ", imgPath=" + imgPath + ", type=" + type + ", ip=" + ip + ", addItem1="
				+ addItem1 + ", addItem2=" + addItem2 + ", addItem3=" + addItem3 + ", addItem4=" + addItem4
				+ ", addItem5=" + addItem5 + "]";
	}
	
	
	
	
	
}
