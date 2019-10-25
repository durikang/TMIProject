package question.model.vo;

import java.sql.Date;

public class Question implements java.io.Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -7162437064279836877L;
	private int oNum;
	private String category;
	private String oTitle;
	private String oContent;
	private String Ofile;
	private String oAlarm;

	
	public Question() {}


	public Question(int oNum, String category, String oTitle, String oContent, String ofile, String oAlarm) {
		super();
		this.oNum = oNum;
		this.category = category;
		this.oTitle = oTitle;
		this.oContent = oContent;
		Ofile = ofile;
		this.oAlarm = oAlarm;
	}


	public int getoNum() {
		return oNum;
	}


	public void setoNum(int oNum) {
		this.oNum = oNum;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getoTitle() {
		return oTitle;
	}


	public void setoTitle(String oTitle) {
		this.oTitle = oTitle;
	}


	public String getoContent() {
		return oContent;
	}


	public void setoContent(String oContent) {
		this.oContent = oContent;
	}


	public String getOfile() {
		return Ofile;
	}


	public void setOfile(String ofile) {
		Ofile = ofile;
	}


	public String getoAlarm() {
		return oAlarm;
	}


	public void setoAlarm(String oAlarm) {
		this.oAlarm = oAlarm;
	}


	public static long getSerialversionuid() {
		return serialVersionUID;
	}


	@Override
	public String toString() {
		return "Question [oNum=" + oNum + ", category=" + category + ", oTitle=" + oTitle + ", oContent=" + oContent
				+ ", Ofile=" + Ofile + ", oAlarm=" + oAlarm + "]";
	}

	
	
}