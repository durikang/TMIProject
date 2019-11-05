package joinPage.model.vo;

import java.sql.Date;

public class Join implements java.io.Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -4484931821129498981L;
	private String UserId; // 사용자아이디
	private String Userpw; // 사용자 비밀번호
	private String PWHINT; // 비밀번호 힌트
	private String HINT; // 힌트
	private String Username; // 사용자 이름
	private String Birth; // 생년월일
	private String Phone; // 전화번호
	private String Email; // 이메일
	private String Address; // 주소
	private String Favorite; // 관심장르
	private String Mvp; // 회원등급
	private String Breakdown; // 영화 관람내역
	private String status; // 탈퇴여부
	private Date Punish; // 회원 정지
	
	public Join() {
		
	}


	public Join(String userId, String userpw, String pWHINT, String hINT, String username, String birth, String phone,
			String email, String address, String favorite, String mvp, String breakdown, String status, Date punish) {
		super();
		this.UserId = userId;
		this.Userpw = userpw;
		this.PWHINT = pWHINT;
		this.HINT = hINT;
		this.Username = username;
		this.Birth = birth;
		this.Phone = phone;
		this.Email = email;
		this.Address = address;
		this.Favorite = favorite;
		this.Mvp = mvp;
		this.Breakdown = breakdown;
		this.status = status;
		this.Punish = punish;
	}

	public Join(String userId, String userpw, String pWHINT, String hINT, String username, String birth, String phone,
			String email, String address, String favorite, String mvp, String breakdown, String status) {
		super();
		this.UserId = userId;
		this.Userpw = userpw;
		this.PWHINT = pWHINT;
		this.HINT = hINT;
		this.Username = username;
		this.Birth = birth;
		this.Phone = phone;
		this.Email = email;
		this.Address = address;
		this.Favorite = favorite;
		this.Mvp = mvp;
		this.Breakdown = breakdown;
		this.status = status;
	}

	
	public Join(String userId, String userpw, String pWHINT, String hINT, String username, String birth, String phone,
			String email, String address, String favorite) {
		super();
		this.UserId = userId;
		this.Userpw = userpw;
		this.PWHINT = pWHINT;
		this.HINT = hINT;
		this.Username = username;
		this.Birth = birth;
		this.Phone = phone;
		this.Email = email;
		this.Address = address;
		this.Favorite = favorite;
	
	}

	public String getUserId() {
		return UserId;
	}

	public void setUserId(String userId) {
		this.UserId = userId;
	}

	public String getUserpw() {
		return Userpw;
	}

	public void setUserpw(String userpw) {
		this.Userpw = userpw;
	}

	public String getPWHINT() {
		return PWHINT;
	}

	public void setPWHINT(String pWHINT) {
		this.PWHINT = pWHINT;
	}

	public String getHINT() {
		return HINT;
	}

	public void setHINT(String hINT) {
		this.HINT = hINT;
	}

	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		this.Username = username;
	}

	public String getBirth() {
		return Birth;
	}

	public void setBirth(String birth) {
		this.Birth = birth;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		this.Phone = phone;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		this.Email = email;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		this.Address = address;
	}

	public String getFavorite() {
		return Favorite;
	}

	public void setFavorite(String favorite) {
		this.Favorite = favorite;
	}

	public String getMvp() {
		return Mvp;
	}

	public void setMvp(String mvp) {
		this.Mvp = mvp;
	}

	public String getBreakdown() {
		return Breakdown;
	}

	public void setBreakdown(String breakdown) {
		this.Breakdown = breakdown;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public Date getPunish() {
		return Punish;
	}
	
	public void setPunish(Date punish) {
		this.Punish = punish;
	}


	@Override
	public String toString() {
		return "Join [UserId=" + UserId + ", Userpw=" + Userpw + ", PWHINT=" + PWHINT + ", HINT=" + HINT + ", Username="
				+ Username + ", Birth=" + Birth + ", Phone=" + Phone + ", Email=" + Email + ", Address=" + Address
				+ ", Favorite=" + Favorite + ", Mvp=" + Mvp + ", Breakdown=" + Breakdown + ", status=" + status
				+ ", Punish=" + Punish + "]";
	}

	
}



