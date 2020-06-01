package net.javaguides.Collectormanagement.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.employeemanagement.dao.CollectorDao;
import net.javaguides.employeemanagement.model.Collector;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class CollectorServlet extends HttpServlet {
    private static final long serialVersionUID = 1 L;
    private CollectorDao collectorDao;

    public void init() {
    	CollectorDao = new Collector();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String bank_id = request.getParameter("bank_id");
        String pwd = request.getParameter("pwd");
       

        Bank_Manager Collector = new Collector();
        bank_Manager.setbank_id(bank_id);
        bank_Manager.pwd(pwd);
   

        try {
        	CollectorDao.registerCollector(Collector);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("Collector_Login.jsp");
    }
}