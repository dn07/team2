package collector_bankmanager;

import javax.servlet.*;
import javax.servlet.http.*;

public class ServletCollector extends HttpServlet
{
	SQLCollector sqlc = new SQLCollector();
	public void service(HttpServletRequest req, HttpServletResponse res)
	{
		Collector ncol = new Collector(req.getParameter("first name"),req.getParameter("last name"),req.getParameter("email"),req.getParameter("phone"), req.getParameter("pan"), req.getParameter("aadhar"), req.getParameter("address"), req.getParameter("dob"));
		
		
		System.out.println("First name:" + ncol.getFname() + " Last Name:" + ncol.getLname());
		
		int check = sqlc.SendData(ncol);
		
		
		if (check == 0){
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