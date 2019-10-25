package review.model.vo;

import java.sql.Date;

public class Review implements java.io.Serializable{
	
	private static final long serialVersionUID = -3797491615716827627L;
	
	private int rNum;
	private String mCode;
	private String rTitle;
	private String rContent;
	private int rRate;
	
	public Review() {}

	public Review(int rNum, String mCode, String rTitle, String rContent, int rRate) {
		super();
		this.rNum = rNum;
		this.mCode = mCode;
		this.rTitle = rTitle;
		this.rContent = rContent;
		this.rRate = rRate;
	}

	public int getrNum() {
		return rNum;
	}

	public void setrNum(int rNum) {
		this.rNum = rNum;
	}

	public String getmCode() {
		return mCode;
	}

	public void setmCode(String mCode) {
		this.mCode = mCode;
	}

	public String getrTitle() {
		return rTitle;
	}

	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}

	public String getrContent() {
		return rContent;
	}

	public void setrContent(String rContent) {
		this.rContent = rContent;
	}

	public int getrRate() {
		return rRate;
	}

	public void setrRate(int rRate) {
		this.rRate = rRate;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return "Review [rNum=" + rNum + ", mCode=" + mCode + ", rTitle=" + rTitle + ", rContent=" + rContent
				+ ", rRate=" + rRate + "]";
	}

	
}
