package deceased_collection;

public class Collector {
	public String cid;
	public String lid;
	public String aid;
	public double amount;
	public double selling_price;
	public double collateral_info;
	

	public String getCid() {
		return cid;
	}

	public void setCid(String cid) {
		this.cid = cid;
	}

	public String getLid() {
		return lid;
	}

	public void setLid(String lid) {
		this.lid = lid;
	}
	public String getAid() {
		return aid;
	}

	public void setAid(String aid) {
		this.aid = aid;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}
	public double getselling_price() {
		return selling_price;
	}

	public void setselling_price(double selling_price) {
		this.selling_price = selling_price;
	}
	public double getcollateral_info() {
		return collateral_info;
	}

	public void setcollateral_info(double collateral_info) {
		this.collateral_info = collateral_info;
	}
}