package collector_bankmanager;

import javax.servlet.http.*;

/*
 * Author:				Himanshu Savargaonkar
 * Reg. No.:			18BEC0735
 * Name:				ServletRemCollector.java
 * Purpose:				Accept data from jsp form and delete collector from database. Call SQL function 
 * 						and delete the collector object from the SQL Database.
 * Class Used by:		RemCollector.jsp; Servlet:RemColl;
 * Classes Used:		Collector; SQLCollector;
 */

public class ServletRemCollector extends HttpServlet
{
	// Declaring SQLCollector Obj
	SQLCollector sqlc = new SQLCollector();
	
	/*
	 * Author:				Himanshu Savargaonkar
	 * Reg. No:				18BEC0735
	 * Function Name:		service()
	 * Purpose:				Standard servlet function. Accept data from RemCollector.jsp and store the same in 
	 * 						Collector object. Call SQL function to delete collector object from database. Redirect based on 
	 * 						database status. 
	 * Arguments:			HttpServletRequest; HttpServletResponse;
	 * Return:				-
	 */
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		//Declare Collector Object and initialize using constructor
		Collector ncol = new Collector();
		ncol.setFname(req.getParameter("first name"));
		ncol.setId(req.getParameter("id"));
		//Send Collector Obj to SQL Database 
		int check = sqlc.RemColl(ncol);
		
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