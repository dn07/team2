package collector;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.mysql.jdbc.Statement;

public class LoanDAOImpl implements LoanDAO {
	static Connection con;
	static PreparedStatement ps;

	@Override
	public int insertLoan(Loan loan) {
		int status = 0;
		try {
			con = MyConnectionProvider.getCon();
			ps = con.prepareStatement("insert into Loan value(?,?,?,?,?)");
			ps.setString(1, loan.getCid());
			ps.setString(2, loan.getLid());
			ps.setInt(3, loan.getDays());
			ps.setInt(4, loan.getPromiseCounter());
			ps.setString(5, loan.getStatus());
			status = ps.executeUpdate();
			con.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	@Override
	public Loan updateLoan(Loan loan)
	{
		try {
			con = MyConnectionProvider.getCon();
			String sqlQuery = "UPDATE Loan SET status = ?, days = ?, promiseCounter = ? WHERE cid = ? and lid = ?";
			
			
			ps = con.prepareStatement(sqlQuery, Statement.RETURN_GENERATED_KEYS);
			
			
			
			ps.setString(1, loan.getStatus());
			ps.setInt(2, loan.getDays());
			ps.setInt(3, loan.getPromiseCounter());
			
			ps.setString(4, loan.getCid());
			ps.setString(5, loan.getLid());
			
			
			System.out.println(loan.getDays()+" "+loan.getPromiseCounter());
			System.out.println(ps.toString());

			
			
			int rowAffected = ps.executeUpdate();
			System.out.println(String.format("Row affected %d", rowAffected));
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
		return loan;
	}
	
	
	@Override
	public Loan getLoan(String cid, String lid, int days) {
		Loan loan = new Loan();
		loan.setCid(cid);
		loan.setLid(lid);
		System.out.println("Get Loan");
		
		try {
			con = MyConnectionProvider.getCon();
			String sqlQuery = "select days, promiseCounter, status from Loan WHERE cid = ? and lid = ?";
			
			
			ps = con.prepareStatement(sqlQuery);
			ps.setString(1, cid);
			ps.setString(2, lid);
			
			System.out.println("Executed the get query"+ ps.toString());
			ResultSet rs = ps.executeQuery();
			
			//ResultSet rs = ps.getGeneratedKeys();
			while (rs.next()) {
				//loan.setCid(rs.getString(2));
				//loan.setLid(rs.getString(3));
				loan.setDays(rs.getInt(1));
				loan.setPromiseCounter(rs.getInt(2));
				loan.setStatus(rs.getString(3));
				System.out.println(loan.getStatus());
			}
		} catch (Exception e) {
			System.out.println(e);
			e.printStackTrace();
		}
		return loan;
	}

	
}