package collector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class CollectorDAOImpl implements CollectorDAO {
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertCollector(Collector c) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into loan value(?,?,?)");
			ps.setString(1, c.getCid());
			ps.setString(2, c.getLid());
			ps.setDouble(3, c.getAmount());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Collector getCollector(String cid, String lid, double amount) {
		Collector c = new Collector();
		try {
			con = MyConnectionProvider.getCon();
			String sqlQuery = "UPDATE loan SET amount = amount - ? WHERE cid = ? and lid = ?";
			ps = con.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS);
			ps.setDouble(1, amount);
			ps.setString(2, cid);
			ps.setString(3, lid);
			int rowAffected = ps.executeUpdate();
			System.out.println(String.format("Row affected %d", rowAffected));
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				c.setCid(rs.getString(2));
				c.setLid(rs.getString(3));
				c.setAmount(rs.getDouble(1));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}
}