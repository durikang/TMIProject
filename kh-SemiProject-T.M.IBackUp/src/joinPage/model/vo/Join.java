package joinPage.model.vo;

import java.sql.Date;

public class Join implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7162437064279836877L;
	private String userNum;
	private String userId;
	private String userPw;
	private String userName;
	private String birth;
	private String phone;
	private String addNum;
	private String address;
	private String favorite;
	private String grade;
	private String basket;
	private String breakDown;
	private String status;
	
	public Join() {}

	public Join(String userNum, String userId, String userPw, String userName, String birth, String phone,
			String addNum, String address, String favorite, String grade, String basket, String breakDown,
			String status) {
		super();
		this.userNum = userNum;
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.birth = birth;
		this.phone = phone;
		this.addNum = addNum;
		this.address = address;
		this.favorite = favorite;
		this.grade = grade;
		this.basket = basket;
		this.breakDown = breakDown;
		this.status = status;
	}

	public Join(String userId, String userPw, String userName, String birth, String phone, String addNum,
			String address, String favorite) {
		super();
		this.userId = userId;
		this.userPw = userPw;
		this.userName = userName;
		this.birth = birth;
		this.phone = phone;
		this.addNum = addNum;
		this.address = address;
		this.favorite = favorite;
	}

	public String getUserNum() {
		return userNum;
	}

	public void setUserNum(String userNum) {
		this.userNum = userNum;
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

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddNum() {
		return addNum;
	}

	public void setAddNum(String addNum) {
		this.addNum = addNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFavorite() {
		return favorite;
	}

	public void setFavorite(String favorite) {
		this.favorite = favorite;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getBasket() {
		return basket;
	}

	public void setBasket(String basket) {
		this.basket = basket;
	}

	public String getBreakDown() {
		return breakDown;
	}

	public void setBreakDown(String breakDown) {
		this.breakDown = breakDown;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Join [userNum=" + userNum + ", userId=" + userId + ", userPw=" + userPw + ", userName=" + userName
				+ ", birth=" + birth + ", phone=" + phone + ", addNum=" + addNum + ", address=" + address
				+ ", favorite=" + favorite + ", grade=" + grade + ", basket=" + basket + ", breakDown=" + breakDown
				+ ", status=" + status + "]";
	}
	
	
}