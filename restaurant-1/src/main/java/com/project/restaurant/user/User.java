package com.project.restaurant.user;

import java.util.Date;
import java.util.List;


public class User {

	private int userSeq;
	
	/** 아이디 (이메일) */
	private String userId;
	
	/** 비밀번호 */
	private String userPw;
	
	/** 이름 */
	private String name;
	
	/** 전화번호 */
	private String tel;
	
	/** 생일 */
	private String birthday;
	
	/** 성별 */
	private String gender;
	
	/** 우편번호 */
	private String postcode;
	
	/** 주소 */
	private String addr1;
	
	/** 상세주소 */
	private String addr2;
	
	/** 가입일자 */
	private Date regDate;
	
	/** 수정일자 */
	private Date editDate;

	/** 구분 (사용자 / 관리자) */
	private String userType;
	
	/** 로그인 구분 (site / SNS 로그인) */
	private String loginType;
	
	private String addItem1;
	private String addItem2;
	private String addItem3;
	
	private String chkArr;

	public int getUserSeq() {
		return userSeq;
	}

	public void setUserSeq(int userSeq) {
		this.userSeq = userSeq;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPw() {
		return userPw;
	}

	public void setUserPw(String userPw) {
		this.userPw = userPw;
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

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getLoginType() {
		return loginType;
	}

	public void setLoginType(String loginType) {
		this.loginType = loginType;
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

	public String getChkArr() {
		return chkArr;
	}

	public void setChkArr(String chkArr) {
		this.chkArr = chkArr;
	}

	@Override
	public String toString() {
		return "User [userSeq=" + userSeq + ", userId=" + userId + ", userPw=" + userPw + ", name=" + name + ", tel="
				+ tel + ", birthday=" + birthday + ", gender=" + gender + ", postcode=" + postcode + ", addr1=" + addr1
				+ ", addr2=" + addr2 + ", regDate=" + regDate + ", editDate=" + editDate + ", userType=" + userType
				+ ", loginType=" + loginType + ", addItem1=" + addItem1 + ", addItem2=" + addItem2 + ", addItem3="
				+ addItem3 + ", chkArr=" + chkArr + "]";
	}
	
	
	
	
	
	
}
