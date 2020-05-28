package Bankruptcy;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class customerdaoimpl implements customerdao{
static Connection con;
static PreparedStatement ps;
	
	@Override
	public int insertcustomer(customer c)
	{
		int status=0;
		try {
			con=defaulterdb.getCon();
			ps=con.prepareStatement("insert into defaulter values(?,?,?,?");
			ps.setString(1,  c.getFirstName());
			ps.setString(2, c.getLastName());
			ps.setString(3, c.getLoanId());
			ps.setString(4, c.getBankruptcyId());
			status=ps.executeUpdate();
			con.close();
		}
		catch(Exception e) {
			System.out.println(e);
			
		}
		return status;
	}
	
	public customer getcustomer(String FirstName,String LastName, String LoanId,String BankruptcyId) 
	{
		customer c=new customer();
		try {
			con=defaulterdb.getCon();
			ps=con.prepareStatement("select*from defaulter where FirstName=?,LastName=?,LoanId=? and BankruptcyId=? ");
			ps.setString(4,DefaulterId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				c.setBankruptcyIdId(rs.getString(1));
				}
			
		}catch(Exception e) {
			System.out.println(e);
		}
		
	
	
		// TODO Auto-generated method stub
		return null;
	}
}