package moneyManage.model;

public class movRate {
	private String mCode;
	private int rate;
	public movRate() {
	}
	public movRate(String mCode, int rate) {
		super();
		this.mCode = mCode;
		this.rate = rate;
	}
	public String getmCode() {
		return mCode;
	}
	public void setmCode(String mCode) {
		this.mCode = mCode;
	}
	public int getRate() {
		return rate;
	}
	public void setRate(int rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "movRate [mCode=" + mCode + ", rate=" + rate + "]";
	}
	
}
