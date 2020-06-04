package deceased_collection;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyConnection implements MyProvider {
	static Connection con = null;

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection(connUrl,username,pwd);
			System.out.println("hello");
		} catch (Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
