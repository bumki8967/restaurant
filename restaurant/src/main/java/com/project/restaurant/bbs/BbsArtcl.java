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
	private Date reg_Date;
	
	/** 수정일자 */
	private Date edit_Date;
	
	/** 조회수 */
	private String hit;
	
	/** 이미지 파일 원본 이름 */
	private String img_Origin_Nm;
	
	/** 이미지 파일 변경 이름 */
	private String img_File_Nm;
	
	/** 이미지 경로 */
	private String img_Path;
	
	/** 게시판 구분 */
	private String type;
	
	private String add_Item1;
	private String add_Item2;
	private String add_Item3;
	private String add_Item4;
	private String add_Item5;
	
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
	public Date getReg_Date() {
		return reg_Date;
	}
	public void setReg_Date(Date reg_Date) {
		this.reg_Date = reg_Date;
	}
	public Date getEdit_Date() {
		return edit_Date;
	}
	public void setEdit_Date(Date edit_Date) {
		this.edit_Date = edit_Date;
	}
	public String getHit() {
		return hit;
	}
	public void setHit(String hit) {
		this.hit = hit;
	}
	public String getImg_Origin_Nm() {
		return img_Origin_Nm;
	}
	public void setImg_Origin_Nm(String img_Origin_Nm) {
		this.img_Origin_Nm = img_Origin_Nm;
	}
	public String getImg_File_Nm() {
		return img_File_Nm;
	}
	public void setImg_File_Nm(String img_File_Nm) {
		this.img_File_Nm = img_File_Nm;
	}
	public String getImg_Path() {
		return img_Path;
	}
	public void setImg_Path(String img_Path) {
		this.img_Path = img_Path;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getAdd_Item1() {
		return add_Item1;
	}
	public void setAdd_Item1(String add_Item1) {
		this.add_Item1 = add_Item1;
	}
	public String getAdd_Item2() {
		return add_Item2;
	}
	public void setAdd_Item2(String add_Item2) {
		this.add_Item2 = add_Item2;
	}
	public String getAdd_Item3() {
		return add_Item3;
	}
	public void setAdd_Item3(String add_Item3) {
		this.add_Item3 = add_Item3;
	}
	public String getAdd_Item4() {
		return add_Item4;
	}
	public void setAdd_Item4(String add_Item4) {
		this.add_Item4 = add_Item4;
	}
	public String getAdd_Item5() {
		return add_Item5;
	}
	public void setAdd_Item5(String add_Item5) {
		this.add_Item5 = add_Item5;
	}
	
	@Override
	public String toString() {
		return "BbsArtcl [artclSeq=" + artclSeq + ", title=" + title + ", content=" + content + ", writer=" + writer
				+ ", reg_Date=" + reg_Date + ", edit_Date=" + edit_Date + ", hit=" + hit + ", img_Origin_Nm="
				+ img_Origin_Nm + ", img_File_Nm=" + img_File_Nm + ", img_Path=" + img_Path + ", type=" + type
				+ ", add_Item1=" + add_Item1 + ", add_Item2=" + add_Item2 + ", add_Item3=" + add_Item3 + ", add_Item4="
				+ add_Item4 + ", add_Item5=" + add_Item5 + "]";
	}
	
	
	
}
