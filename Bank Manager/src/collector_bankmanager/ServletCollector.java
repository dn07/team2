package collector_bankmanager;

import javax.servlet.http.*;

/*
 * Author:				Himanshu Savargaonkar
 * Reg. No.:			18BEC0735
 * Name:				ServletCollector.java
 * Purpose:				Accept data from jsp form and store it in the collector object. Call SQL function 
 * 						and add the collector object to the SQL Database.
 * Class Used by:		AddCollector.jsp; Servlet:AddColl;
 * Classes Used:		Collector; SQLCollector;
 */

public class ServletCollector extends HttpServlet
{
	// Declaring SQLCollector Obj
	SQLCollector sqlc = new SQLCollector();
	
	/*
	 * Author:				Himanshu Savargaonkar
	 * Reg. No:				18BEC0735
	 * Function Name:		service()
	 * Purpose:				Standard servlet function. Accept data from AddCollector.jsp and store the same in 
	 * 						Collector object. Call SQL function to store collector object in database. Redirect based on 
	 * 						database status. 
	 * Arguments:			HttpServletRequest; HttpServletResponse;
	 * Return:				-
	 */
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		//Declare Collector Object and initialize using constructor
		Collector ncol = new Collector(
								req.getParameter("first name"),
								req.getParameter("last name"),
								req.getParameter("email"),
								req.getParameter("phone"),
								req.getParameter("pan"),
								req.getParameter("aadhar"),
								req.getParameter("address"),
								req.getParameter("dob")
						);	
		//Send Collector Obj to SQL Database 
		int check = sqlc.AddColl(ncol);
		
		//Check Database Status and Redirect accordingly
		if (check == 1){
			res.setContentType("text/html");
			String site = new String("success.jsp");
				      res.setStatus(res.SC_MOVED_TEMPORARILY);
				        res.setHeader("Location", site);  
				    }
				    else {
				      res.setContentType("text/html");
				      String site = new String("fail.jsp");
				      res.setStatus(res.SC_MOVED_TEMPORARILY);
				        res.setHeader("Location", site); 
				    }
		
		
		
	}
}