package Bankruptcy;
import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.ResultSet;

import com.mysql.jdbc.PreparedStatement;
public class defaulterdb implements loan_defaulters {
	static Connection con=null;
	static PreparedStatement ps;
	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(connUrl,username,password);
			 ps=(PreparedStatement)con.prepareStatement("select*from defaulters");
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				String name=rs.getString(4);
				System.out.println(name);
			}
			}
		catch(Exception e) {
			System.out.println(e);
		}
		return con;
	}

}