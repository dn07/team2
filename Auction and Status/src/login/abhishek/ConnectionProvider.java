package login.abhishek;

import java.sql.DriverManager;

public class ConnectionProvider {

	static Connection con=null;
	
	public static Connection getCon() {
		try {
			Class.forName("con.mysql.jdbc.driver");
			con=DriverManager.getConnection(connUrl, username, pwd)
		}catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}
}
