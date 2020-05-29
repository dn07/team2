package net.javaguides.Bank_Managermanagement.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.employeemanagement.dao.Bank_ManagerDao;
import net.javaguides.employeemanagement.model.Bank_Manager;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class Bank_ManagerServlet extends HttpServlet {
    private static final long serialVersionUID = 1 L;
    private Bank_ManagerDao bank_ManagerDao;

    public void init() {
    	bank_ManagerDao = new Bank_Manager();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String bank_id = request.getParameter("bank_id");
        String pwd = request.getParameter("pwd");
       

        Bank_Manager bank_Manager = new Bank_Manager();
        bank_Manager.set(bank_id);
        bank_Manager.pwd(pwd);
   

        try {
        	Bank_ManagerDao.registerBank_Manager(bank_Manager);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("Manager_Login.jsp");
    }
}