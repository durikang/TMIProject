package moneyManage.model;

public class mrList {
	private int ronum;
	private String mcode;
	private String mtitle;
	public mrList(int ronum, String mcode, String mtitle) {
		super();
		this.ronum = ronum;
		this.mcode = mcode;
		this.mtitle = mtitle;
	}
	public mrList() {
		super();
	}
	public int getRonum() {
		return ronum;
	}
	public void setRonum(int ronum) {
		this.ronum = ronum;
	}
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMtitle() {
		return mtitle;
	}
	public void setMtitle(String mtitle) {
		this.mtitle = mtitle;
	}
	@Override
	public String toString() {
		return "mrList [ronum=" + ronum + ", mcode=" + mcode + ", mtitle=" + mtitle + "]";
	}
	
}
