package com.project.restaurant.user;

public class User {

	private int user_seq;
	private String user_id;
	private String user_pw;
	private String name;
	private String email;
	private String tel;
	private String birthday;
	private String peopleType;
	private String postcode;
	private String addr1;
	private String addr2;
	private String reg_date;
	private String type;
	private String etc1;
	private String etc2;
	private String etc3;
	
	
	
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


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
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


	public String getPeopleType() {
		return peopleType;
	}


	public void setPeopleType(String peopleType) {
		this.peopleType = peopleType;
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


	public String getReg_date() {
		return reg_date;
	}


	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}


	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}


	public String getEtc1() {
		return etc1;
	}


	public void setEtc1(String etc1) {
		this.etc1 = etc1;
	}

	public String getEtc2() {
		return etc2;
	}


	public void setEtc2(String etc2) {
		this.etc2 = etc2;
	}


	public String getEtc3() {
		return etc3;
	}


	public void setEtc3(String etc3) {
		this.etc3 = etc3;
	}


	@Override
	public String toString() {
		return "User [user_seq=" + user_seq + ", user_id=" + user_id + ", user_pw=" + user_pw + ", name=" + name
				+ ", email=" + email + ", tel=" + tel + ", birthday=" + birthday + ", peopleType=" + peopleType
				+ ", postcode=" + postcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", reg_date=" + reg_date
				+ ", type=" + type + ", etc1=" + etc1 + ", etc2=" + etc2 + ", etc3=" + etc3 + "]";
	}


	
	
	
	
	
	
}
