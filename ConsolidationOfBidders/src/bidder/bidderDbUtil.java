package bidder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;



public class bidderDbUtil {
	int t=10;
	private  DataSource dataSource;
	public bidderDbUtil(DataSource theDataSource) {
		dataSource = theDataSource;
	}
	public void addBidder(BidderDetails theBidder) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs=null;
		
		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create sql for insert
			String sql = "insert into bidder_info "
					   + "(buyer_id, f_name, l_name, phone_number, email, password) "
					   + "values (?, ?, ?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, theBidder.getBuyerID());
			myStmt.setString(2, theBidder.getFname());
			myStmt.setString(3, theBidder.getLname());
			myStmt.setString(4, theBidder.getPhone_number());
			myStmt.setString(5, theBidder.getEmail());
			myStmt.setString(6, theBidder.getPassword());
			
			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, myRs);
		}
	}

	private void close(Connection myConn, Statement myStmt, ResultSet myRs) {

		try {
			if (myRs != null) {
				myRs.close();
			}
			
			if (myStmt != null) {
				myStmt.close();
			}
			
			if (myConn != null) {
				myConn.close();   // doesn't really close it ... just puts back in connection pool
			}
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
	}
	public int checkbidder(BidderDetails theBidder) throws SQLException  {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;

	
			myConn = dataSource.getConnection();
			String id=theBidder.getBuyerID();
			String sql="select * from bidder_info where buyer_id="+'"'+id+'"';
			myStmt = myConn.prepareStatement(sql);
			myRs = myStmt.executeQuery(sql);
			while(myRs.next())
			{
			String pass=myRs.getString("password");
			if(pass.equals(theBidder.getPassword()))
			{
			   t=1;  
			}
			else {
				t=0;
			}
			}
			
		   
			close(myConn, myStmt, myRs);
			return t;
				
}
	public void addapplication(Bidderapplication thebidder) throws Exception{
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs=null;
		
		try {
			// get db connection
			myConn = dataSource.getConnection();
			
			// create sql for insert
			String sql = "insert into bidder_application "
					   + "(item, aadhar, age, address, monthly, bb, pre, buyer_id) "
					   + "values (?, ?, ?, ?, ?, ?, ?, ?)";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, thebidder.getItem());
			myStmt.setString(2, thebidder.getAadhar());
			myStmt.setString(3, thebidder.getAge());
			myStmt.setString(4, thebidder.getAddress());
			myStmt.setString(5, thebidder.getMonthly());
			myStmt.setString(6, thebidder.getBb());
			myStmt.setString(7, thebidder.getPre());
			myStmt.setString(8, thebidder.getBuyer_id());
			
			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, myRs);
		}
		
		
	}
	public int loginloanofficer(loanofficer theOfficer) throws SQLException {
		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String id=theOfficer.getID();
		String sql="select * from loan_officer where ID="+'"'+id+'"';
		myStmt = myConn.prepareStatement(sql);
		myRs = myStmt.executeQuery(sql);
		while(myRs.next())
		{
		String pass=myRs.getString("password");
		if(pass.equals(theOfficer.getPassword()))
		{
		   t=1;  
		}
		else {
			t=0;
		}
		}
		close(myConn, myStmt, myRs);
		
		return t;
	}
public  List<Bidderapplication> getBidders() throws SQLException {
		
		List<Bidderapplication> bidders = new ArrayList<>();
		
		Connection myConn = null;
		Statement myStmt = null;
		ResultSet myRs = null;
		myConn = dataSource.getConnection();
		String sql = "select * from bidder_application order by buyer_id";
		myStmt = myConn.createStatement();
		myRs = myStmt.executeQuery(sql);
		while (myRs.next()) {
				
				
				String item = myRs.getString("item");
				String aadhar = myRs.getString("aadhar");
				String age = myRs.getString("age");
				String address = myRs.getString("address");
				String monthly=myRs.getString("monthly");
				String bb=myRs.getString("bb");
				String pre=myRs.getString("pre");
				String buyer_id=myRs.getString("buyer_id");
				
				
				Bidderapplication temp=new Bidderapplication(buyer_id, item, aadhar, age, address, monthly, bb, pre);
				
			
				bidders.add(temp);				
			}
			close(myConn, myStmt, myRs);
			return bidders;		
		}
public void deleteBidder(Bidderapplication theBidder) throws SQLException {
	Connection myConn = null;
	PreparedStatement myStmt = null;
	ResultSet myRs = null;
	myConn = dataSource.getConnection();
	String id=theBidder.getBuyer_id();
	String sql="delete from bidder_application where buyer_id="+'"'+id+'"';
	myStmt = myConn.prepareStatement(sql);
	myStmt.execute();
	close(myConn, myStmt, myRs);
	
	
	
	
}

			
	}

		

	



