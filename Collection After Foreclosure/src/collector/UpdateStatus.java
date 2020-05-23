package collector;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/updateStatus")
public class UpdateStatus extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateStatus() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CollectorDAO cs = new CollectorDAOImpl();
		String cid = request.getParameter("cid");
		String lid = request.getParameter("lid");
		double amount = Double.parseDouble(request.getParameter("amount"));
		String submitType = request.getParameter("submit");
		Collector c = new Collector();
		c = cs.getCollector(cid, lid, amount);
		if (submitType.equals("Submit")) {
			request.setAttribute("message", "Data Entry Successful!" + c.getAmount());
			request.getRequestDispatcher("updateStatus.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "Data Not Found!");
			request.getRequestDispatcher("UpdateStatus.jsp").forward(request, response);
		}
	}

}
