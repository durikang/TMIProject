package moneyManage.model;

import java.sql.Date;

public class quaterRate {
	private Date day;
	private int rate;
	
	public quaterRate() {
	}

	public quaterRate(Date day, int rate) {
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
		return "quaterRate [day=" + day + ", rate=" + rate + "]";
	}
	
}
