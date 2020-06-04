package deceased_collection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class Submission_Status implements CollectorDAO {
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertCollector(Collector c) {
		int status = 0;
		try {
			con = MyConnection.getCon();
			ps = con.prepareStatement("insert into report value(?,?,?)");
			ps.setString(1, c.getCid());
			ps.setString(2, c.getLid());
			ps.setString(2, c.getAid());
			ps.setDouble(3, c.getAmount());
			ps.setDouble(3, c.getselling_price());
			ps.setDouble(3, c.getcollateral_info());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Collector getCollector(String cid, String lid, String aid, double amount, double selling_price,double collateral_info)
 {
		Collector c = new Collector();
		try {
			con = MyConnection.getCon();
			String sqlQuery = "select * from report WHERE cid = ? and lid = ? and aid = ?";
			ps = con.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS);
			ps.setDouble(1, amount);
			ps.setDouble(2, selling_price);
			ps.setDouble(3, collateral_info);
			ps.setString(4, cid);
			ps.setString(5, lid);
			ps.setString(5, aid);
			int rowAffected = ps.executeUpdate();
			System.out.println(String.format("Row affected %d", rowAffected));
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				c.setCid(rs.getString(4));
				c.setLid(rs.getString(5));
				c.setAid(rs.getString(6));
				c.setselling_price(rs.getDouble(2));
				c.setcollateral_info(rs.getDouble(3));
				c.setAmount(rs.getDouble(1));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return c;
	}

	@Override
	public Collector getCollector(String cid, String lid,String aid) {
		// TODO Auto-generated method stub
		return null;
	}

}