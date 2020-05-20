package bidder;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;

import bidder.bidderdbutil;

/**
 * Servlet implementation class controllerservlet
 */
@WebServlet("/controllerservlet")
public class controllerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private bidderdbutil Bidderdbutil;
	
	@Resource(name="jdbc/bidderdbutil")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			Bidderdbutil = new bidderdbutil(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String theCommand = request.getParameter("command");
		switch(theCommand)
		{
		case "REG":
			try {
				regbidder(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void regbidder(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String ph=request.getParameter("phone number");
		String buyID=request.getParameter("buyer id");
		String password=request.getParameter("pwd");
		bidderinfo bidder=new bidderinfo(fname,lname,password,email,ph,buyID);
		Bidderdbutil.regBidder(bidder);
		
		
		
		
		
	}

}
