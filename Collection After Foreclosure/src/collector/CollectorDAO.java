package collector;

public interface CollectorDAO {
	public int insertCollector(Collector c);

	public Collector getCollector(String cid, String lid, double amount);

	public Collector getCollector(String cid, String lid);
}