package bidder;

import java.io.IOException;

import java.sql.SQLException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sql.DataSource;



/**
 * Servlet implementation class controllerservlet
 */
@WebServlet("/controllerservlet")
public class controllerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private bidderDbUtil bidderdbutil;
       
	@Resource(name="jdbc/web_student_tracker")
	private DataSource dataSource;
	
	@Override
	public void init() throws ServletException {
		super.init();
		
		// create our student db util ... and pass in the conn pool / datasource
		try {
			bidderdbutil = new bidderDbUtil(dataSource);
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
	}
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String theCommand = request.getParameter("command");
			switch (theCommand) {
			case "REG":
				addBidders(request,response);
				break;
			case "LOGIN":
				loginbidder(request,response);
				break;
			case "CONFIRM":
				bidderapplication(request,response);
				break;
			case "LOAN OFFICER":
				officerlogin(request,response);
			case "VIEW BIDDERS":
				bidderview(request,response);
			
			}
					
				
		}
		catch (Exception exc) {
			throw new ServletException(exc);
		}
		
	}

	private void bidderview(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//PrintWriter out=response.getWriter();
		List<Bidderapplication> bidders=bidderdbutil.getBidders();
		/*for(int i=0;i<bidders.size();i++)
		{
			out.println("<br/>"+bidders.get(i).getBuyer_id());
			out.println("<br/>"+bidders.get(i).getAadhar());
		}*/
		request.setAttribute("BIDDER-LIST", bidders);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/bidder-list.jsp");
		dispatcher.forward(request, response);
		
	}


	private void officerlogin(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String officerId=request.getParameter("officer id");
		String pass=request.getParameter("pwd");
		loanofficer theOfficer=new loanofficer(officerId, pass);
		int r=bidderdbutil.loginloanofficer(theOfficer);
		if(r==1)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/bidderlist.jsp");
			dispatcher.forward(request, response);
		}
		if(r==0)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/confirmation.jsp");
			dispatcher.forward(request, response);
		}
		
		
	}


	private void bidderapplication(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String buyer_id=request.getParameter("buyer id");
		String item=request.getParameter("rf");
		String aadhar=request.getParameter("aadhar");
		String age=request.getParameter("age");
		String address=request.getParameter("address");
		String monthly=request.getParameter("salary");
		String bb=request.getParameter("bank balance");
		String pre=request.getParameter("prev");
		Bidderapplication thebidder= new Bidderapplication(buyer_id, item, aadhar, age, address, monthly, bb, pre);
		bidderdbutil.addapplication(thebidder);
		
		
	}


	private void loginbidder(HttpServletRequest request, HttpServletResponse response) throws SQLException, ServletException, IOException {
		String buyerID=request.getParameter("buyer id");
		String password=request.getParameter("pwd");
		// create a new bidder object
		BidderDetails theBidder= new BidderDetails(buyerID, password);
		int r=bidderdbutil.checkbidder(theBidder);
		if(r==1)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/details.jsp");
			dispatcher.forward(request, response);
		}
		if(r==0)
		{
			RequestDispatcher dispatcher = request.getRequestDispatcher("/confirmation.jsp");
			dispatcher.forward(request, response);
		}
		
				
		
		
		
		
		
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private void addBidders(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String buyerID=request.getParameter("buyer id");
		String firstName = request.getParameter("fname");
		String lastName = request.getParameter("lname");
		String phonenumber = request.getParameter("phone number");
		String email = request.getParameter("email");	
		String password=request.getParameter("pwd");
		
		// create a new bidder object
		BidderDetails theBidder= new BidderDetails(buyerID, firstName, lastName, phonenumber, email, password);
		
		// add the bidder to the database
		bidderdbutil.addBidder(theBidder);
	
	}


}
