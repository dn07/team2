package bidder;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.sql.DataSource;

import bidder.bidderinfo;

public class bidderdbutil {
	//private DataSource dataSource;

	//public bidderdbutil(DataSource theDataSource) {
		//dataSource = theDataSource;
	//}
	public void regBidder(bidderinfo bidder) throws Exception {

		Connection myConn = null;
		PreparedStatement myStmt = null;
		ResultSet myRs = null;
		
		try {
			// get db connection
			myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bidderinfo","admin","admin");
			
			// create sql for insert
			String sql = "insert into reg_bidder "
					   + "(fname,lname,phone_number,buyerID,password,email) "
					   + "values (?, ?, ?, ?, ?, ?);";
			
			myStmt = myConn.prepareStatement(sql);
			
			// set the param values for the student
			myStmt.setString(1, bidder.getFname());
			myStmt.setString(2, bidder.getLname());
			myStmt.setString(3, bidder.getPhone_number());
			myStmt.setString(4, bidder.getBuyerID());
			myStmt.setString(5, bidder.getPassword());
			myStmt.setString(6, bidder.getEmail());
			
			
			// execute sql insert
			myStmt.execute();
		}
		finally {
			// clean up JDBC objects
			close(myConn, myStmt, null);
		}
	}

	private void close(Connection myConn, PreparedStatement myStmt,ResultSet myRs) {
		
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
}


