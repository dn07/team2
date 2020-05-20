package bidder;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

/**
 * Servlet implementation class test
 */
@WebServlet("/test")
public class test extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name="jdbc/bidder")
	private DataSource dataSource;
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out=response.getWriter();
		response.setContentType("text/plain");
		Connection myConn=null;
		Statement mysmt=null;
		ResultSet myrs=null;
		try {
			myConn=dataSource.getConnection();
			String sql="select * from bidderinfo";
			mysmt=myConn.createStatement();
			myrs=mysmt.executeQuery(sql);
			while(myrs.next())
			{
				String email=myrs.getString("email");
				out.println(email);
			}
			
		}
		catch (Exception exc) {
			exc.printStackTrace();
		}
		
	}

}
