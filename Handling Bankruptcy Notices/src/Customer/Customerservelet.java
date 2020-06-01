package net.javaguides.employeemanagement.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.employeemanagement.dao.CustomerDao;
import net.javaguides.employeemanagement.model.Customer;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class EmployeeServlet extends HttpServlet {
    private static final long serialVersionUID = 1 L;
    private CustomerDao customerDao;

    public void init() {
    	customerDao = new CustomerDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String loan_id = request.getParameter("loan_id");
        String pwd = request.getParameter("pwd");
       

        Customer customer = new Customer();
        customer.setloan_id(loan_id);
        customer.pwd(pwd);
   

        try {
            CustomerDao.registerCustomer(customer);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("Customer_Login.jsp");
    }
}