package Payment.model.vo;

public class Ticket {
	private int tNum;
	private int price;
	private String seat;
	
	public Ticket(int tNum, int price, String seat) {
		super();
		this.tNum = tNum;
		this.price = price;
		this.seat = seat;
	}
	public int gettNum() {
		return tNum;
	}
	public void settNum(int tNum) {
		this.tNum = tNum;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getSeat() {
		return seat;
	}
	public void setSeat(String seat) {
		this.seat = seat;
	}
	
	
	
	

}
