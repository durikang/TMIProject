package basket.model.vo;

public class SkBasket {

	private int sbsCode;
	private String skCode;
	private int skQuantity;

	public SkBasket() {}

	public SkBasket(int sbsCode, String skCode, int skQuantity) {
		super();
		this.sbsCode = sbsCode;
		this.skCode = skCode;
		this.skQuantity = skQuantity;
	}
	

	public SkBasket(String skCode, int skQuantity) {
		super();
		this.skCode = skCode;
		this.skQuantity = skQuantity;
	}

	public int getSbsCode() {
		return sbsCode;
	}

	public void setSbsCode(int sbsCode) {
		this.sbsCode = sbsCode;
	}

	public String getSkCode() {
		return skCode;
	}

	public void setSkCode(String skCode) {
		this.skCode = skCode;
	}

	public int getSkQuantity() {
		return skQuantity;
	}

	public void setSkQuantity(int skQuantity) {
		this.skQuantity = skQuantity;
	}

	@Override
	public String toString() {
		return "SkBasket [sbsCode=" + sbsCode + ", skCode=" + skCode + ", skQuantity=" + skQuantity + "]";
	}
	
	
	
	
	
	
	
}
