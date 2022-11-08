package com.project.restaurant.bbs;

import java.util.Date;

public class BbsSetup {
	
	private int bbs_setup_seq;
	private String bbs_name;
	private String bbs_use_yn;
	private String down_use_yn;
	private String answer_use_yn;
	private String comment_use_yn;
	private String annymty_use_yn;
	private String secret_use_yn;
	private Date reg_date;
	private Date edit_date;
	private String add_item1;
	private String add_item2;
	private String add_item3;
	
	
	public int getBbs_setup_seq() {
		return bbs_setup_seq;
	}
	public void setBbs_setup_seq(int bbs_setup_seq) {
		this.bbs_setup_seq = bbs_setup_seq;
	}
	public String getBbs_name() {
		return bbs_name;
	}
	public void setBbs_name(String bbs_name) {
		this.bbs_name = bbs_name;
	}
	public String getBbs_use_yn() {
		return bbs_use_yn;
	}
	public void setBbs_use_yn(String bbs_use_yn) {
		this.bbs_use_yn = bbs_use_yn;
	}
	public String getDown_use_yn() {
		return down_use_yn;
	}
	public void setDown_use_yn(String down_use_yn) {
		this.down_use_yn = down_use_yn;
	}
	public String getAnswer_use_yn() {
		return answer_use_yn;
	}
	public void setAnswer_use_yn(String answer_use_yn) {
		this.answer_use_yn = answer_use_yn;
	}
	public String getComment_use_yn() {
		return comment_use_yn;
	}
	public void setComment_use_yn(String comment_use_yn) {
		this.comment_use_yn = comment_use_yn;
	}
	public String getAnnymty_use_yn() {
		return annymty_use_yn;
	}
	public void setAnnymty_use_yn(String annymty_use_yn) {
		this.annymty_use_yn = annymty_use_yn;
	}
	public String getSecret_use_yn() {
		return secret_use_yn;
	}
	public void setSecret_use_yn(String secret_use_yn) {
		this.secret_use_yn = secret_use_yn;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public Date getEdit_date() {
		return edit_date;
	}
	public void setEdit_date(Date edit_date) {
		this.edit_date = edit_date;
	}
	public String getAdd_item1() {
		return add_item1;
	}
	public void setAdd_item1(String add_item1) {
		this.add_item1 = add_item1;
	}
	public String getAdd_item2() {
		return add_item2;
	}
	public void setAdd_item2(String add_item2) {
		this.add_item2 = add_item2;
	}
	public String getAdd_item3() {
		return add_item3;
	}
	public void setAdd_item3(String add_item3) {
		this.add_item3 = add_item3;
	}
	
	@Override
	public String toString() {
		return "BbsSetup [bbs_setup_seq=" + bbs_setup_seq + ", bbs_name=" + bbs_name + ", bbs_use_yn=" + bbs_use_yn
				+ ", down_use_yn=" + down_use_yn + ", answer_use_yn=" + answer_use_yn + ", comment_use_yn="
				+ comment_use_yn + ", annymty_use_yn=" + annymty_use_yn + ", secret_use_yn=" + secret_use_yn
				+ ", reg_date=" + reg_date + ", edit_date=" + edit_date + ", add_item1=" + add_item1 + ", add_item2="
				+ add_item2 + ", add_item3=" + add_item3 + "]";
	}
	
	
	
}
