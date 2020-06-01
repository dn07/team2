package Bankruptcy;
import java.sql.PreparedStatement;

import bankruptcygenerations.DB_Connection2;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class Insert_Values {
	public void insert_values(String FirstName,String LastName,String LoanId, String  BankruptcyId, String Phone)
	{
		 DB_Connection2 obj_DB_Connection2=new DB_Connection2();
		 Connection connection=obj_DB_Connection2.get_connection();
		 PreparedStatement ps=null;
		try {
	String query="insert into defaulters.DEFAULTERLIST(FirstName,LastName,LoanId,BankruptcyId,Phone) values(?,?,?,?,?)";
		 ps=connection.prepareStatement(query);
		 ps.setString(1, FirstName);
		 ps.setString(2, LastName);
		 ps.setString(3, LoanId);
		 ps.setString(4, BankruptcyId);
		 ps.setString(5, Phone);
		
		 ps.executeUpdate();
		} catch (Exception e) {
		 System.err.println(e);
		}
	}

}
