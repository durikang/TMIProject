package snack.model.vo;

import java.sql.Date;

public class Snack implements java.io.Serializable{
	
	private static final long serialVersionUID = -3797491615716827627L;
	
	private int skCode;
	private String skName;
	private String skPrice;
	private String skcontent;
	private String picture;
	
	public Snack() {}
	
	

	public Snack(int skCode, String skName, String skPrice, String skcontent, String picture) {
		super();
		this.skCode = skCode;
		this.skName = skName;
		this.skPrice = skPrice;
		this.skcontent = skcontent;
		this.picture = picture;
	}



	public int getSkCode() {
		return skCode;
	}

	public void setSkCode(int skCode) {
		this.skCode = skCode;
	}

	public String getSkName() {
		return skName;
	}

	public void setSkName(String skName) {
		this.skName = skName;
	}

	public String getSkPrice() {
		return skPrice;
	}

	public void setSkPrice(String skPrice) {
		this.skPrice = skPrice;
	}

	public String getSkcontent() {
		return skcontent;
	}

	public void setSkcontent(String skcontent) {
		this.skcontent = skcontent;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Snack [skCode=" + skCode + ", skName=" + skName + ", skPrice=" + skPrice + ", skcontent=" + skcontent
				+ ", picture=" + picture + "]";
	}

	

	
}
