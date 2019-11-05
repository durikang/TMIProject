package moneyManage.model;

import java.sql.Date;

public class termRate {
	private Date day;
	private int rate;
	public termRate() {
		
	}
	public termRate(Date day, int rate) {
		super();
		this.day = day;
		this.rate = rate;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "termRate [day=" + day + ", rate=" + rate + "]";
	}
}
