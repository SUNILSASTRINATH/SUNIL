package deceased_collection;

public interface CollectorDAO {
	public int insertCollector(Collector c);

	public Collector getCollector(String cid, String lid, String aid, double amount, double selling_price,double collateral_info);

	public Collector getCollector(String cid, String lid,String aid);
}