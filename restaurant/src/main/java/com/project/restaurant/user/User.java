package com.project.restaurant.user;

import java.util.Date;
import java.util.List;

public class User {

	private int user_seq;
	
	private String user_id;
	
	private String user_pw;
	
	private String name;
	
	private String tel;
	
	private String birthday;
	
	private String gender;
	
	private String postcode;
	
	private String addr1;
	
	private String addr2;
	
	private Date reg_date;
	
	private Date edit_date;

	private String user_type;
	
	private String login_type;
	
	private String add_item1;

	private String add_item2;
	
	private String add_item3;
	
	private String chkArr;
	
	
	public int getUser_seq() {
		return user_seq;
	}
	public void setUser_seq(int user_seq) {
		this.user_seq = user_seq;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_pw() {
		return user_pw;
	}
	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
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
	public String getUser_type() {
		return user_type;
	}
	public void setUser_type(String user_type) {
		this.user_type = user_type;
	}
	public String getLogin_type() {
		return login_type;
	}
	public void setLogin_type(String login_type) {
		this.login_type = login_type;
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
	public String getChkArr() {
		return chkArr;
	}
	public void setChkArr(String chkArr) {
		this.chkArr = chkArr;
	}
	@Override
	public String toString() {
		return "User [user_seq=" + user_seq + ", user_id=" + user_id + ", user_pw=" + user_pw + ", name=" + name
				+ ", birthday=" + birthday + ", gender=" + gender + ", postcode=" + postcode + ", addr1=" + addr1
				+ ", addr2=" + addr2 + ", reg_date=" + reg_date + ", edit_date=" + edit_date + ", user_type="
				+ user_type + ", login_type=" + login_type + ", add_item1=" + add_item1 + ", add_item2=" + add_item2
				+ ", add_item3=" + add_item3 + "]";
	}
	
	
	
	
}
