package moneyManage.model;

import java.sql.Date;

public class payment {
	private String pcode;
	private String bscode;
	private String money;
	private Date payday;
	private String discount;
	private String status;
	public payment() {};
	public payment(String pcode, String money, Date payday) {
		super();
		this.pcode = pcode;
		this.money = money;
		this.payday = payday;
	}
	public payment(String pcode, String bscode, String money, Date payday, String discount, String status) {
		super();
		this.pcode = pcode;
		this.bscode = bscode;
		this.money = money;
		this.payday = payday;
		this.discount = discount;
		this.status = status;
	}
	public String getPcode() {
		return pcode;
	}
	public void setPcode(String pcode) {
		this.pcode = pcode;
	}
	public String getBscode() {
		return bscode;
	}
	public void setBscode(String bscode) {
		this.bscode = bscode;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public Date getPayday() {
		return payday;
	}
	public void setPayday(Date payday) {
		this.payday = payday;
	}
	public String getDiscount() {
		return discount;
	}
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "payment [pcode=" + pcode + ", bscode=" + bscode + ", money=" + money + ", payday=" + payday
				+ ", discount=" + discount + ", status=" + status + "]";
	}
	
}
